import 'dart:async';
import 'dart:isolate';

import 'package:flutter/services.dart';

part 'background_worker.private.dart';

/// Helper class for background tasks. 
final class BackgroundWorker {
  late final SendPort _sendPort;
  late final Isolate _isolate;
  final Completer<Isolate> _ready = Completer<Isolate>();
  var _initialized = false;

  /// Creates the Isolate that will be used for background tasks. In the rare
  /// case you need more than one Isolate, you'll need to create more than one
  /// instance of [BackgroundWorker] and call this method for each of them.
  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;

    final receivePort = ReceivePort();
    final token = RootIsolateToken.instance!;
    _isolate = await Isolate.spawn(
      _isolateEntry,
      _InitParams(sendPort: receivePort.sendPort, token: token),
    );

    _sendPort = await receivePort.first as SendPort;
    _ready.complete(_isolate);
  }

  /// Executes [task] on another thread, very similarly as [compute] does, but
  /// with at least 2 key differences:
  /// 
  ///   1. [compute] creates a new Isolate each time it's called, which can be
  /// expensive, while in this case, the Isolate has been previously created
  /// already
  /// 
  ///   2. [compute] doesn't automatically calls
  /// [BackgroundIsolateBinaryMessenger.ensureInitialized], which is very
  /// important if we're doing anything that relies on Flutter's API
  /// 
  /// The function signature it's pretty much the same as [compute], so it can
  /// be used in the same way (hopefully).
  /// 
  /// If the generics gets you a bit lost, is actually very simple:
  /// 
  ///   [R] is the type of the value you expect to get back from the background
  /// task (if any)
  /// 
  ///   [M] is the type of the message (argument) you want to send to the
  /// background task (optional, can be `null`)
  /// 
  ///   [task] is just a function that can take at least a single parameter and
  /// can be either asynchronous or not
  /// 
  /// Finally, please note that [M] must be sendable data since Isolates only
  /// allow sending small set data. Please, for more detailed information, go
  /// check: https://api.flutter.dev/flutter/dart-isolate/SendPort/send.html
  Future<R> run<M, R>(FutureOr<R> Function(M message) task, M message) async {
    // Ensures the isolate is initialized before sending tasks
    await _ready.future;

    final responsePort = ReceivePort();
    _sendPort.send(_Task(
      task: task,
      message: message,
      replyPort: responsePort.sendPort,
    ));

    final result = await responsePort.first;
    if (result is Error || result is Exception) throw result.error;
    return result as R;
  }

  void dispose() async {
    _sendPort.send(null);
    _isolate.kill();
  }

  // This is the isolate that will remain alive during the app execution
  static Future<void> _isolateEntry(_InitParams params) async {
    BackgroundIsolateBinaryMessenger.ensureInitialized(params.token);

    final receivePort = ReceivePort();
    params.sendPort.send(receivePort.sendPort);

    await for (final message in receivePort) {
      // We consider `null` as the signal to shutdown this isolate
      if (message == null) break;

      if (message is _Task) {
        try {
          final result = await message.task(message.message);
          message.replyPort.send(result);
        } catch (e) {
          message.replyPort.send(e);
        }
      }
    }
  }
}
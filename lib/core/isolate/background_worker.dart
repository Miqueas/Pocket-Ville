import 'dart:async';
import 'dart:isolate';

import 'package:flutter/services.dart';

final class _Error {
  final Object error;

  const _Error(this.error);
}

final class _InitParams {
  final SendPort sendPort;
  final RootIsolateToken token;

  const _InitParams({required this.sendPort, required this.token});
}

final class _Task {
  final Function task;
  final Object? message;
  final SendPort replyPort;

  const _Task({
    required this.task,
    required this.message,
    required this.replyPort,
  });
}

// A long-lived background isolate that executes arbitrary tasks
final class BackgroundWorker {
  late final SendPort _sendPort;
  late final Isolate _isolate;
  final Completer<Isolate> _ready = Completer<Isolate>();
  var _initialized = false;

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

  /// Runs [task] with [message] on the background isolate and returns the result.
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
    if (result is _Error) throw result.error;
    return result as R;
  }

  void dispose() async {
    _sendPort.send(null);
    _isolate.kill();
  }

  static Future<void> _isolateEntry(_InitParams params) async {
    BackgroundIsolateBinaryMessenger.ensureInitialized(params.token);

    final receivePort = ReceivePort();
    params.sendPort.send(receivePort.sendPort);

    await for (final message in receivePort) {
      if (message == null) break; // shutdown signal

      if (message is _Task) {
        try {
          final result = await Function.apply(message.task, [message.message]);
          message.replyPort.send(result);
        } catch (e) {
          message.replyPort.send(_Error(e));
        }
      }
    }
  }
}
import 'package:pocket_ville/core/isolate/background_worker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'background_worker_provider.g.dart';

/// Provider for [BackgroundWorker]. This allows to keep a [BackgroundWorker]
/// alive during the execution of the app and dispose it when it's no longer
/// needed. It's done this way to prevent setting up new isolates every time a
/// task needs to be executed on the background, which can be expensive.
@Riverpod(keepAlive: true)
Future<BackgroundWorker> backgroundWorker(Ref ref) async {
  final worker = BackgroundWorker();
  await worker.init();
  ref.onDispose(() => worker.dispose());
  return worker;
}
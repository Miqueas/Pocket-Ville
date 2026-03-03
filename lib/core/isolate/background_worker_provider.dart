import 'package:pocket_ville/core/isolate/background_worker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'background_worker_provider.g.dart';

@Riverpod(keepAlive: true)
Future<BackgroundWorker> backgroundWorker(Ref ref) async {
  final worker = BackgroundWorker();
  await worker.init();
  ref.onDispose(() => worker.dispose());
  return worker;
}
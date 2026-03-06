/// Private DTOs used in [BackgroundWorker]
part of 'background_worker.dart';

/// DTO for the isolate initialization parameters. Containing the [sendPort]
/// property for communication. The [token] property it's here mostly to allow
/// execution of tasks that might require access to Flutter APIs (like
/// method channels)
final class _InitParams {
  final SendPort sendPort;
  final RootIsolateToken token;

  const _InitParams({
    required this.sendPort,
    required this.token,
  });
}

/// DTO for the task to be executed, carrying all the necessary data packed in a
/// single payload. As expected, [task] is the task to be execute; [message]
/// could be any arbitrary data needed by the [task], passed as the [task]
/// argument; finally, [replyPort] is used internally to catch the result of the
/// operation or, if something went wrong, the error. 
/// 
/// Originally, this class had generics type safety, but turns out all the type
/// information for the generics gets completely stripped off when sending it to
/// the isolate, so it was simplified to this version.
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
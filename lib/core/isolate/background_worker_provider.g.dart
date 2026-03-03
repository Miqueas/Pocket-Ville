// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_worker_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(backgroundWorker)
final backgroundWorkerProvider = BackgroundWorkerProvider._();

final class BackgroundWorkerProvider
    extends
        $FunctionalProvider<
          AsyncValue<BackgroundWorker>,
          BackgroundWorker,
          FutureOr<BackgroundWorker>
        >
    with $FutureModifier<BackgroundWorker>, $FutureProvider<BackgroundWorker> {
  BackgroundWorkerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'backgroundWorkerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$backgroundWorkerHash();

  @$internal
  @override
  $FutureProviderElement<BackgroundWorker> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<BackgroundWorker> create(Ref ref) {
    return backgroundWorker(ref);
  }
}

String _$backgroundWorkerHash() => r'91cf9b71c86f872c9ecaef624c6b84fd80182fef';

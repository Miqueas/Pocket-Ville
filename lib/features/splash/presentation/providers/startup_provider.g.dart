// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'startup_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(startup)
final startupProvider = StartupProvider._();

final class StartupProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  StartupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startupHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return startup(ref);
  }
}

String _$startupHash() => r'8ec13c3b13c68737316b5fe08e1efc6f3204fae5';

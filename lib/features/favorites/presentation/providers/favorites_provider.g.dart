// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Favorites)
final favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends $AsyncNotifierProvider<Favorites, Set<int>> {
  FavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  Favorites create() => Favorites();
}

String _$favoritesHash() => r'8c1743f4cacafd6bd6f927a23fa3e0dbc1f5c96f';

abstract class _$Favorites extends $AsyncNotifier<Set<int>> {
  FutureOr<Set<int>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Set<int>>, Set<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Set<int>>, Set<int>>,
              AsyncValue<Set<int>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

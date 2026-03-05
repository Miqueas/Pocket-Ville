// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonList)
final pokemonListProvider = PokemonListProvider._();

final class PokemonListProvider
    extends $AsyncNotifierProvider<PokemonList, List<Pokemon>> {
  PokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonListHash();

  @$internal
  @override
  PokemonList create() => PokemonList();
}

String _$pokemonListHash() => r'079073bbebe43f9f156d336f134bb7cc2a52cce4';

abstract class _$PokemonList extends $AsyncNotifier<List<Pokemon>> {
  FutureOr<List<Pokemon>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Pokemon>>, List<Pokemon>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Pokemon>>, List<Pokemon>>,
              AsyncValue<List<Pokemon>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

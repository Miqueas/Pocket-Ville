// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_listing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonListing)
final pokemonListingProvider = PokemonListingProvider._();

final class PokemonListingProvider
    extends $AsyncNotifierProvider<PokemonListing, List<Pokemon>> {
  PokemonListingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonListingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonListingHash();

  @$internal
  @override
  PokemonListing create() => PokemonListing();
}

String _$pokemonListingHash() => r'bf72efae69bd312022c93a5c6a28f43bcfad0ba8';

abstract class _$PokemonListing extends $AsyncNotifier<List<Pokemon>> {
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

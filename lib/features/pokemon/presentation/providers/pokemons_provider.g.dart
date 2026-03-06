// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Pokemons)
final pokemonsProvider = PokemonsProvider._();

final class PokemonsProvider
    extends $AsyncNotifierProvider<Pokemons, List<Pokemon>> {
  PokemonsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonsHash();

  @$internal
  @override
  Pokemons create() => Pokemons();
}

String _$pokemonsHash() => r'25b030f18aadc320af2c4acaf72d693d7278ac6a';

abstract class _$Pokemons extends $AsyncNotifier<List<Pokemon>> {
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

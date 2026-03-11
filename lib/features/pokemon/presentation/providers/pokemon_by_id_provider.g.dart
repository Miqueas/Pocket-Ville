// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_by_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonById)
final pokemonByIdProvider = PokemonByIdFamily._();

final class PokemonByIdProvider
    extends $AsyncNotifierProvider<PokemonById, List<Pokemon>> {
  PokemonByIdProvider._({
    required PokemonByIdFamily super.from,
    required Iterable<int> super.argument,
  }) : super(
         retry: null,
         name: r'pokemonByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonByIdHash();

  @override
  String toString() {
    return r'pokemonByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PokemonById create() => PokemonById();

  @override
  bool operator ==(Object other) {
    return other is PokemonByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonByIdHash() => r'b98b6d2d44c36ce49d057cd477c4a72435079346';

final class PokemonByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          PokemonById,
          AsyncValue<List<Pokemon>>,
          List<Pokemon>,
          FutureOr<List<Pokemon>>,
          Iterable<int>
        > {
  PokemonByIdFamily._()
    : super(
        retry: null,
        name: r'pokemonByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonByIdProvider call(Iterable<int> ids) =>
      PokemonByIdProvider._(argument: ids, from: this);

  @override
  String toString() => r'pokemonByIdProvider';
}

abstract class _$PokemonById extends $AsyncNotifier<List<Pokemon>> {
  late final _$args = ref.$arg as Iterable<int>;
  Iterable<int> get ids => _$args;

  FutureOr<List<Pokemon>> build(Iterable<int> ids);
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
    element.handleCreate(ref, () => build(_$args));
  }
}

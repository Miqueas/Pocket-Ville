// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonList)
final pokemonListProvider = PokemonListFamily._();

final class PokemonListProvider
    extends $AsyncNotifierProvider<PokemonList, List<Pokemon>> {
  PokemonListProvider._({
    required PokemonListFamily super.from,
    required Ref super.argument,
  }) : super(
         retry: null,
         name: r'pokemonListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonListHash();

  @override
  String toString() {
    return r'pokemonListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PokemonList create() => PokemonList();

  @override
  bool operator ==(Object other) {
    return other is PokemonListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonListHash() => r'3975b3f9b50bf0dbd6be0603db8e7eb1c945ab84';

final class PokemonListFamily extends $Family
    with
        $ClassFamilyOverride<
          PokemonList,
          AsyncValue<List<Pokemon>>,
          List<Pokemon>,
          FutureOr<List<Pokemon>>,
          Ref
        > {
  PokemonListFamily._()
    : super(
        retry: null,
        name: r'pokemonListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonListProvider call(Ref ref) =>
      PokemonListProvider._(argument: ref, from: this);

  @override
  String toString() => r'pokemonListProvider';
}

abstract class _$PokemonList extends $AsyncNotifier<List<Pokemon>> {
  late final _$args = ref.$arg as Ref;
  Ref get ref => _$args;

  FutureOr<List<Pokemon>> build(Ref ref);
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

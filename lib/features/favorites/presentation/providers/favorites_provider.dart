import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_provider.g.dart';

@riverpod
final class Favorites extends _$Favorites {
  static const _storageKey = 'favorite_pokemon_ids';
  static const _storage = FlutterSecureStorage();

  @override
  Future<Set<int>> build() async {
    final raw = await _storage.read(key: _storageKey);
    if (raw == null) return {};
    final decoded = jsonDecode(raw) as List<dynamic>;
    return decoded.cast<int>().toSet();
  }

  Future<void> _persist(Set<int> ids) async {
    await _storage.write(key: _storageKey, value: jsonEncode(ids.toList()));
  }

  Future<void> toggle(int pokemonId) async {
    // Ensures the initial load is complete (aka, `build` has completed)
    final current = await future;

    if (current.contains(pokemonId)) {
      await remove(pokemonId);
    } else {
      await add(pokemonId);
    }
  }

  Future<void> add(int pokemonId) async {
    // Ensures the initial load is complete (aka, `build` has completed)
    final current = await future;
    if (current.contains(pokemonId)) return;
    final updated = Set<int>.of(current)..add(pokemonId);
    await _persist(updated);
    state = AsyncData(updated);
  }

  Future<void> remove(int pokemonId) async {
    // Ensures the initial load is complete (aka, `build` has completed)
    final current = await future;
    if (!current.contains(pokemonId)) return;
    final updated = Set<int>.of(current)..remove(pokemonId);
    await _persist(updated);
    state = AsyncData(updated);
  }
}
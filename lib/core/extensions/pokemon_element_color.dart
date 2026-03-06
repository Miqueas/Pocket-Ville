import 'package:flutter/material.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';

extension PokemonElementColor on PokemonElement {
  static const _colors = <PokemonElement, Color>{
    .bug: Color(0xFF43A047),
    .dark: Color(0xFF546E7A),
    .dragon: Color(0xFF00ACC1),
    .electric: Color(0xFFFDD835),
    .fairy: Color(0xFFE91E63),
    .fighting: Color(0xFFE53935),
    .fire: Color(0xFFFF9800),
    .flying: Color(0xFF00BCD4),
    .ghost: Color(0xFF8E24AA),
    .grass: Color(0xFF8BC34A),
    .ground: Color(0xFFFFB300),
    .ice: Color(0xFF3D8BFF),
    .normal: Color(0xFF546E7A),
    .poison: Color(0xFF9C27B0),
    .psychic: Color(0xFF673AB7),
    .rock: Color(0xFF795548),
    .steel: Color(0xFF546E7A),
    .water: Color(0xFF2196F3),
  };

  Color get color => _colors[this]!;
}
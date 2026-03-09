import 'dart:ui';

enum PokemonElement {
  normal(1),
  fighting(2),
  flying(3),
  poison(4),
  ground(5),
  rock(6),
  bug(7),
  ghost(8),
  steel(9),
  fire(10),
  water(11),
  grass(12),
  electric(13),
  psychic(14),
  ice(15),
  dragon(16),
  dark(17),
  fairy(18),
  stellar(19),
  unknown(10001);

  final int id;

  const PokemonElement(this.id);

  Color get color => _colors[this]!;

  static PokemonElement fromString(String value) => switch (value) {
    'normal' => normal,
    'fighting' => fighting,
    'flying' => flying,
    'poison' => poison,
    'ground' => ground,
    'rock' => rock,
    'bug' => bug,
    'ghost' => ghost,
    'steel' => steel,
    'fire' => fire,
    'water' => water,
    'grass' => grass,
    'electric' => electric,
    'psychic' => psychic,
    'ice' => ice,
    'dragon' => dragon,
    'dark' => dark,
    'fairy' => fairy,
    'stellar' => stellar,
    _ => unknown,
  };
}

const _colors = <PokemonElement, Color>{
  .normal: Color(0xFF9FA19F),
  .fighting: Color(0xFFFF8000),
  .flying: Color(0xFF81B9EF),
  .poison: Color(0xFF9141CB),
  .ground: Color(0xFF915121),
  .rock: Color(0xFFAFA981),
  .bug: Color(0xFF91A119),
  .ghost: Color(0xFF704170),
  .steel: Color(0xFF60A1B8),
  .fire: Color(0xFFE62829),
  .water: Color(0xFF2980EF),
  .grass: Color(0xFF3FA129),
  .electric: Color(0xFFFAC000),
  .psychic: Color(0xFFEF4179),
  .ice: Color(0xFF3DCEF3),
  .dragon: Color(0xFF5060E1),
  .dark: Color(0xFF624D4E),
  .fairy: Color(0xFFEF70EF),
  .stellar: Color(0xFF40B5A5),
  .unknown: Color(0xFF9E9E9E),
};
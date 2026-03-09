// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get onboardingTitle01 => 'Todos los Pokémon en un solo lugar';

  @override
  String get onboardingSubtitle01 =>
      'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo';

  @override
  String get onboardingTitle02 => 'Mantén tu Pokédex actualizada';

  @override
  String get onboardingSubtitle02 =>
      'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get pokedex => 'Pokédex';

  @override
  String get regions => 'Regiones';

  @override
  String get favorites => 'Favoritos';

  @override
  String get profile => 'Perfil';

  @override
  String get somethingWentWrong => 'Algo salió mal...';

  @override
  String get networkErrorMessage =>
      'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get noFavoritesTitle => 'No has marcado ningún Pokémon como favorito.';

  @override
  String get noFavoritesSubtitle =>
      'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String get searchPokemon => 'Buscar Pokémon...';

  @override
  String pokemonType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'bug': 'Bicho',
      'dark': 'Siniestro',
      'dragon': 'Dragón',
      'electric': 'Eléctrico',
      'fairy': 'Hada',
      'fighting': 'Lucha',
      'fire': 'Fuego',
      'flying': 'Volador',
      'ghost': 'Fantasma',
      'grass': 'Planta',
      'ground': 'Tierra',
      'ice': 'Hielo',
      'normal': 'Normal',
      'poison': 'Veneno',
      'psychic': 'Psíquico',
      'rock': 'Roca',
      'steel': 'Acero',
      'water': 'Agua',
      'stellar': 'Astral',
      'unknown': 'Desconocido',
      'other': 'Otro',
    });
    return '$_temp0';
  }

  @override
  String get retry => 'Reintentar';

  @override
  String get comingSoonTitle => '¡Muy pronto disponible!';

  @override
  String get comingSoonSubtitle =>
      'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String get weight => 'PESO';

  @override
  String get height => 'ALTURA';

  @override
  String get category => 'CATEGORÍA';

  @override
  String get ability => 'HABILIDAD';

  @override
  String get weaknesses => 'Debilidades';

  @override
  String get filterByPreference => 'Filtra por tus preferencias';

  @override
  String get type => 'Tipo';

  @override
  String get apply => 'Aplicar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get gender => 'GÉNERO';
}

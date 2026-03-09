// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get onboardingTitle01 => 'All Pokémon in one place';

  @override
  String get onboardingSubtitle01 =>
      'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get onboardingTitle02 => 'Keep your Pokédex updated';

  @override
  String get onboardingSubtitle02 =>
      'Register and save your profile, favorite Pokémon, settings, and much more in the app.';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get pokedex => 'Pokédex';

  @override
  String get regions => 'Regions';

  @override
  String get favorites => 'Favorites';

  @override
  String get profile => 'Profile';

  @override
  String get somethingWentWrong => 'Something went wrong...';

  @override
  String get networkErrorMessage =>
      'We were unable to load the information at this time. Please check your connection or try again later.';

  @override
  String get noFavoritesTitle =>
      'You haven\'t marked any Pokémon as favorites.';

  @override
  String get noFavoritesSubtitle =>
      'Tap on the heart icon of your favorite Pokémon and they will appear here.';

  @override
  String get searchPokemon => 'Search Pokémon...';

  @override
  String pokemonType(String type) {
    String _temp0 = intl.Intl.selectLogic(type, {
      'bug': 'Bug',
      'dark': 'Dark',
      'dragon': 'Dragon',
      'electric': 'Electric',
      'fairy': 'Fairy',
      'fighting': 'Fighting',
      'fire': 'Fire',
      'flying': 'Flying',
      'ghost': 'Ghost',
      'grass': 'Grass',
      'ground': 'Ground',
      'ice': 'Ice',
      'normal': 'Normal',
      'poison': 'Poison',
      'psychic': 'Psychic',
      'rock': 'Rock',
      'steel': 'Steel',
      'water': 'Water',
      'stellar': 'Stellar',
      'unknown': 'Unknown',
      'other': 'Other',
    });
    return '$_temp0';
  }

  @override
  String get retry => 'Retry';

  @override
  String get comingSoonTitle => 'Coming Soon!';

  @override
  String get comingSoonSubtitle =>
      'We\'re working to bring you this section. Check back later to discover all the new features.';

  @override
  String get weight => 'WEIGHT';

  @override
  String get height => 'HEIGHT';

  @override
  String get category => 'CATEGORY';

  @override
  String get ability => 'ABILITY';

  @override
  String get weaknesses => 'Weaknesses';

  @override
  String get filterByPreference => 'Filter by preference';

  @override
  String get type => 'Type';

  @override
  String get apply => 'Apply';

  @override
  String get cancel => 'Cancel';

  @override
  String get gender => 'GENDER';
}

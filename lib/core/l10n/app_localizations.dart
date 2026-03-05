import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// Title shown in the 1st onboarding page
  ///
  /// In en, this message translates to:
  /// **'All Pokémon in one place'**
  String get onboardingTitle01;

  /// Subtitle shown in the 1st onboarding page
  ///
  /// In en, this message translates to:
  /// **'Access a wide list of Pokémon from all generations created by Nintendo'**
  String get onboardingSubtitle01;

  /// Title shown in the 2nd onboarding page
  ///
  /// In en, this message translates to:
  /// **'Keep your Pokédex updated'**
  String get onboardingTitle02;

  /// Subtitle shown in the 2nd onboarding page
  ///
  /// In en, this message translates to:
  /// **'Register and save your profile, favorite Pokémon, settings, and much more in the app.'**
  String get onboardingSubtitle02;

  /// Text shown in the button to continue to the next onboarding page
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// Text shown in the button to finish the onboarding
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingGetStarted;

  /// Title of the Pokédex page
  ///
  /// In en, this message translates to:
  /// **'Pokédex'**
  String get pokedex;

  /// Title of the Regions page
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get regions;

  /// Title of the Favorites page
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// Title of the Profile page
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Generic message shown when an error occurs
  ///
  /// In en, this message translates to:
  /// **'Something went wrong...'**
  String get somethingWentWrong;

  /// Message shown when a network error occurs
  ///
  /// In en, this message translates to:
  /// **'We were unable to load the information at this time. Please check your connection or try again later.'**
  String get networkErrorMessage;

  /// Title shown when there are no favorite Pokémon
  ///
  /// In en, this message translates to:
  /// **'You haven\'\'t marked any Pokémon as favorites.'**
  String get noFavoritesTitle;

  /// Subtitle shown when there are no favorite Pokémon
  ///
  /// In en, this message translates to:
  /// **'Tap on the heart icon of your favorite Pokémon and they will appear here.'**
  String get noFavoritesSubtitle;

  /// Placeholder text shown in the search input to search for Pokémon
  ///
  /// In en, this message translates to:
  /// **'Search Pokémon...'**
  String get searchPokemon;

  /// Text shown to indicate the type of a Pokémon
  ///
  /// In en, this message translates to:
  /// **'{type, select, bug{Bug} dark{Dark} dragon{Dragon} electric{Electric} fairy{Fairy} fighting{Fighting} fire{Fire} flying{Flying} ghost{Ghost} grass{Grass} ground{Ground} ice{Ice} normal{Normal} poison{Poison} psychic{Psychic} rock{Rock} steel{Steel} water{Water} other{Other}}'**
  String pokemonType(String type);

  /// Text shown in the button to retry an action after an error occurs
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Text shown in features that are not yet implemented
  ///
  /// In en, this message translates to:
  /// **'Coming Soon!'**
  String get comingSoonTitle;

  /// Text shown in features that are not yet implemented
  ///
  /// In en, this message translates to:
  /// **'We\'\'re working to bring you this section. Check back later to discover all the new features.'**
  String get comingSoonSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Pokedex Global App'**
  String get title;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'All Pokémon in one place'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Access to a wide list of Pokémon from all generations created by Nintendo'**
  String get onboardingDescription1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Keep your Pokédex updated'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Register and save your profile, favorite Pokémon, settings and much more in the application'**
  String get onboardingDescription2;

  /// No description provided for @errorTitle.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong...'**
  String get errorTitle;

  /// No description provided for @errorDescription.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load the information at this moment. Verify your connection or try again later.'**
  String get errorDescription;

  /// No description provided for @regionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Coming soon!'**
  String get regionsTitle;

  /// No description provided for @regionsDescription.
  ///
  /// In en, this message translates to:
  /// **'We\'re working to bring you this section. Come back later to discover all the news.'**
  String get regionsDescription;

  /// No description provided for @favoritesTitle.
  ///
  /// In en, this message translates to:
  /// **'No favorite Pokémon yet'**
  String get favoritesTitle;

  /// No description provided for @favoritesDescription.
  ///
  /// In en, this message translates to:
  /// **'Click on the heart icon of your favorite Pokémon and they will appear here.'**
  String get favoritesDescription;

  /// No description provided for @filterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter by your preferences'**
  String get filterTitle;

  /// No description provided for @filterType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get filterType;

  /// No description provided for @filterDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete filter'**
  String get filterDelete;

  /// No description provided for @filterResult.
  ///
  /// In en, this message translates to:
  /// **'Found'**
  String get filterResult;

  /// No description provided for @filterResult2.
  ///
  /// In en, this message translates to:
  /// **'results'**
  String get filterResult2;

  /// No description provided for @filterSearchBar.
  ///
  /// In en, this message translates to:
  /// **'Catch Pokémon...'**
  String get filterSearchBar;

  /// No description provided for @detailPokemonWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get detailPokemonWeight;

  /// No description provided for @detailPokemonHeight.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get detailPokemonHeight;

  /// No description provided for @detailPokemonCategory.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get detailPokemonCategory;

  /// No description provided for @detailPokemonAbilities.
  ///
  /// In en, this message translates to:
  /// **'Abilities'**
  String get detailPokemonAbilities;

  /// No description provided for @detailPokemonMoves.
  ///
  /// In en, this message translates to:
  /// **'Moves'**
  String get detailPokemonMoves;

  /// No description provided for @detailPokemonGender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get detailPokemonGender;

  /// No description provided for @detailPokemonWeakness.
  ///
  /// In en, this message translates to:
  /// **'Weakness'**
  String get detailPokemonWeakness;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get profileTitle;

  /// No description provided for @profileDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the language in which you want to see the application'**
  String get profileDescription;

  /// No description provided for @tabbarPokedex.
  ///
  /// In en, this message translates to:
  /// **'Pokédex'**
  String get tabbarPokedex;

  /// No description provided for @tabbarFavorite.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get tabbarFavorite;

  /// No description provided for @tabbarProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get tabbarProfile;

  /// No description provided for @tabbarRegions.
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get tabbarRegions;

  /// No description provided for @buttonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get buttonContinue;

  /// No description provided for @buttonStart.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start'**
  String get buttonStart;

  /// No description provided for @buttonRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get buttonRetry;

  /// No description provided for @buttonApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get buttonApply;

  /// No description provided for @buttonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get buttonCancel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

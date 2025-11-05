import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Pokedex Global App';

  @override
  String get onboardingTitle1 => 'All Pokémon in one place';

  @override
  String get onboardingDescription1 => 'Access to a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get onboardingTitle2 => 'Keep your Pokédex updated';

  @override
  String get onboardingDescription2 => 'Register and save your profile, favorite Pokémon, settings and much more in the application';

  @override
  String get errorTitle => 'Something went wrong...';

  @override
  String get errorDescription => 'We couldn\'t load the information at this moment. Verify your connection or try again later.';

  @override
  String get regionsTitle => 'Coming soon!';

  @override
  String get regionsDescription => 'We\'re working to bring you this section. Come back later to discover all the news.';

  @override
  String get favoritesTitle => 'No favorite Pokémon yet';

  @override
  String get favoritesDescription => 'Click on the heart icon of your favorite Pokémon and they will appear here.';

  @override
  String get filterTitle => 'Filter by your preferences';

  @override
  String get filterType => 'Type';

  @override
  String get filterDelete => 'Delete filter';

  @override
  String get filterResult => 'Found';

  @override
  String get filterResult2 => 'results';

  @override
  String get filterSearchBar => 'Catch Pokémon...';

  @override
  String get detailPokemonWeight => 'Weight';

  @override
  String get detailPokemonHeight => 'Height';

  @override
  String get detailPokemonCategory => 'Category';

  @override
  String get detailPokemonAbilities => 'Abilities';

  @override
  String get detailPokemonMoves => 'Moves';

  @override
  String get detailPokemonGender => 'Gender';

  @override
  String get detailPokemonWeakness => 'Weakness';

  @override
  String get profileTitle => 'Language';

  @override
  String get profileDescription => 'Select the language in which you want to see the application';

  @override
  String get tabbarPokedex => 'Pokédex';

  @override
  String get tabbarFavorite => 'Favorites';

  @override
  String get tabbarProfile => 'Profile';

  @override
  String get tabbarRegions => 'Regions';

  @override
  String get buttonContinue => 'Continue';

  @override
  String get buttonStart => 'Let\'s start';

  @override
  String get buttonRetry => 'Retry';

  @override
  String get buttonApply => 'Apply';

  @override
  String get buttonCancel => 'Cancel';
}

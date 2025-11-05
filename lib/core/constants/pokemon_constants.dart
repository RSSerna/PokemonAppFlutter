import 'package:pokemon_app_global66/core/constants/assets_constants.dart';

class PokemonConstants {
  PokemonConstants._();

  // Weaknesses of types (2x damage)
  static const Map<String, List<String>> typeWeaknesses = {
    'normal': ['fighting'],
    'fire': ['water', 'ground', 'rock'],
    'water': ['electric', 'grass'],
    'electric': ['ground'],
    'grass': ['fire', 'ice', 'poison', 'flying', 'bug'],
    'ice': ['fire', 'fighting', 'rock', 'steel'],
    'fighting': ['flying', 'psychic', 'fairy'],
    'poison': ['ground', 'psychic'],
    'ground': ['water', 'grass', 'ice'],
    'flying': ['electric', 'ice', 'rock'],
    'psychic': ['bug', 'ghost', 'dark'],
    'bug': ['fire', 'flying', 'rock'],
    'rock': ['water', 'grass', 'fighting', 'ground', 'steel'],
    'ghost': ['ghost', 'dark'],
    'dragon': ['ice', 'dragon', 'fairy'],
    'dark': ['fighting', 'bug', 'fairy'],
    'steel': ['fire', 'fighting', 'ground'],
    'fairy': ['poison', 'steel'],
  };

  // Resistances of types (0.5x damage)
  static const Map<String, List<String>> typeResistances = {
    'normal': [],
    'fire': ['fire', 'grass', 'ice', 'bug', 'steel', 'fairy'],
    'water': ['fire', 'water', 'ice', 'steel'],
    'electric': ['electric', 'flying', 'steel'],
    'grass': ['water', 'electric', 'grass', 'ground'],
    'ice': ['ice'],
    'fighting': ['bug', 'rock', 'dark'],
    'poison': ['grass', 'fighting', 'poison', 'bug', 'fairy'],
    'ground': ['poison', 'rock'],
    'flying': ['grass', 'fighting', 'bug'],
    'psychic': ['fighting', 'psychic'],
    'bug': ['grass', 'fighting', 'ground'],
    'rock': ['normal', 'fire', 'poison', 'flying'],
    'ghost': ['poison', 'bug'],
    'dragon': ['fire', 'water', 'electric', 'grass'],
    'dark': ['ghost', 'dark'],
    'steel': [
      'normal',
      'grass',
      'ice',
      'flying',
      'psychic',
      'bug',
      'rock',
      'dragon',
      'steel',
      'fairy'
    ],
    'fairy': ['fighting', 'bug', 'dark'],
  };

  // Immunities of types (0x damage)
  static const Map<String, List<String>> typeImmunities = {
    'normal': ['ghost'],
    'fire': [],
    'water': [],
    'electric': [],
    'grass': [],
    'ice': [],
    'fighting': [],
    'poison': [],
    'ground': ['electric'],
    'flying': ['ground'],
    'psychic': [],
    'bug': [],
    'rock': [],
    'ghost': ['normal', 'fighting'],
    'dragon': [],
    'dark': ['psychic'],
    'steel': ['poison'],
    'fairy': ['dragon'],
  };

  static const Map<String, String> abilityTranslations = {
    'overgrow': 'Espesura',
    'chlorophyll': 'Clorofila',
    'blaze': 'Mar Llamas',
    'solar-power': 'Poder Solar',
    'torrent': 'Torrente',
    'rain-dish': 'Cura Lluvia',
    // ... more abilities
  };
}

const Map<String, String> pokemonTypeLogos = {
  'water': AssetsConstants.waterLogo,
  'fire': AssetsConstants.fireLogo,
  'grass': AssetsConstants.grassLogo,
  'electric': AssetsConstants.electricLogo,
  'ice': AssetsConstants.iceLogo,
  'fairy': AssetsConstants.fairyLogo,
  'steel': AssetsConstants.steelLogo,
  'dragon': AssetsConstants.dragonLogo,
  'dark': AssetsConstants.darkLogo,
  'fighting': AssetsConstants.fightingLogo,
  'ground': AssetsConstants.groundLogo,
  'psychic': AssetsConstants.psychicLogo,
  'rock': AssetsConstants.rockLogo,
  'bug': AssetsConstants.bugLogo,
  'poison': AssetsConstants.poisonLogo,
  'ghost': AssetsConstants.ghostLogo,
  'flying': AssetsConstants.flyingLogo,
  'normal': AssetsConstants.normalLogo,
};

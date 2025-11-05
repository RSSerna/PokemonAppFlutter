import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/pokemon_constants.dart';

import '../constants/color_constants.dart';

String getTypeLogo(String type) {
  return pokemonTypeLogos[type.toLowerCase()] ?? AssetsConstants.unknownLogo;
}

const Map<String, Color> pokemonTypeColors = {
  'water': kWaterColor,
  'fire': kFireColor,
  'grass': kGrassColor,
  'electric': kElectricColor,
  'ice': kIceColor,
  'fairy': kFairyColor,
  'steel': kSteelColor,
  'dragon': kDragonColor,
  'dark': kDarkColor,
  'fighting': kFightingColor,
  'ground': kGroundColor,
  'psychic': kPsychicColor,
  'rock': kRockColor,
  'bug': kBugColor,
  'poison': kPoisonColor,
  'ghost': kGhostColor,
  'flying': kFlyingColor,
  'normal': kNormalColor,
};

const Map<String, String> pokemonTypeTranslations = {
  'normal': 'Normal',
  'fire': 'Fuego',
  'water': 'Agua',
  'electric': 'Eléctrico',
  'grass': 'Planta',
  'ice': 'Hielo',
  'fighting': 'Lucha',
  'poison': 'Veneno',
  'ground': 'Tierra',
  'flying': 'Volador',
  'psychic': 'Psíquico',
  'bug': 'Bicho',
  'rock': 'Roca',
  'ghost': 'Fantasma',
  'dragon': 'Dragón',
  'dark': 'Siniestro',
  'steel': 'Acero',
  'fairy': 'Hada',
};

// Helper methods to get color, logo and translation of type
Color getTypeColor(String type) {
  return pokemonTypeColors[type.toLowerCase()] ?? kUnknownColor;
}

String getTypeTranslation(String type) {
  return pokemonTypeTranslations[type.toLowerCase()] ?? type;
}

import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/pokemon_constants.dart';
import 'package:pokemon_app_global66/core/util/pokemon_utils.dart' as utils;

/// Utilidades relacionadas con los tipos de Pokémon.
///
/// Clase de helpers estáticos para calcular debilidades combinadas,
/// obtener traducciones y delegar a funciones utilitarias (color/logo).
class PokemonTypeHelper {
  PokemonTypeHelper._();

  /// Calcula las debilidades (tipos ofensivos con multiplicador >= 2.0)
  /// para la combinación de [types] (lista de tipos defensivos).
  /// Devuelve una lista ordenada alfabéticamente de nombres de tipo en minúscula.
  static List<String> calculateWeaknesses(List<String> types) {
    if (types.isEmpty) return [];

    final damageMultipliers = <String, double>{};

    const allTypes = [
      'normal',
      'fire',
      'water',
      'electric',
      'grass',
      'ice',
      'fighting',
      'poison',
      'ground',
      'flying',
      'psychic',
      'bug',
      'rock',
      'ghost',
      'dragon',
      'dark',
      'steel',
      'fairy'
    ];

    for (final attackType in allTypes) {
      damageMultipliers[attackType] = 1.0;
    }

    for (final defendingType in types) {
      final weaknesses = PokemonConstants.typeWeaknesses[defendingType] ?? [];
      for (final weakness in weaknesses) {
        damageMultipliers[weakness] =
            (damageMultipliers[weakness] ?? 1.0) * 2.0;
      }

      final resistances = PokemonConstants.typeResistances[defendingType] ?? [];
      for (final resistance in resistances) {
        damageMultipliers[resistance] =
            (damageMultipliers[resistance] ?? 1.0) * 0.5;
      }

      final immunities = PokemonConstants.typeImmunities[defendingType] ?? [];
      for (final immunity in immunities) {
        damageMultipliers[immunity] = 0.0;
      }
    }

    final weaknessTypes = damageMultipliers.entries
        .where((entry) => entry.value >= 2.0)
        .map((entry) => entry.key)
        .toList()
      ..sort();

    return weaknessTypes;
  }

  /// Traduce un tipo (ej. "fire" -> "Fuego").
  static String translateType(String type) {
    return utils.getTypeTranslation(type);
  }

  /// Devuelve el color asociado al [type].
  /// Delegado a `pokemon_utils.getTypeColor`.
  static Color getTypeColor(String type) {
    return utils.getTypeColor(type);
  }

  /// Devuelve la ruta del logo/asset asociado al [type].
  /// Delegado a `pokemon_utils.getTypeLogo`.
  static String getTypeLogo(String type) {
    return utils.getTypeLogo(type);
  }

  /// Traduce una lista de tipos.
  static List<String> translateTypes(List<String> types) {
    return types.map((type) => translateType(type)).toList();
  }
}

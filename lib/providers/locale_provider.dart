import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Gestion provider of language app
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

class LocaleNotifier extends StateNotifier<Locale> {
  static const String _localeBoxName = 'locale_box';
  static const String _localeKey = 'current_locale';
  
  LocaleNotifier() : super(const Locale('es')) {
    _loadLocale();
  }

  
  Future<void> _loadLocale() async {
    try {
      final box = await Hive.openBox(_localeBoxName);
      final savedLocale = box.get(_localeKey, defaultValue: 'es') as String;
      state = Locale(savedLocale);
    } catch (e) {
      state = const Locale('es');
    }
  }

  
  Future<void> setLocale(Locale locale) async {
    try {
      final box = await Hive.openBox(_localeBoxName);
      await box.put(_localeKey, locale.languageCode);
      state = locale;
    } catch (e) {
      // silent error
    }
  }

  Future<void> toggleLocale() async {
    final newLocale = state.languageCode == 'es' 
        ? const Locale('en') 
        : const Locale('es');
    await setLocale(newLocale);
  }
}

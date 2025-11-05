import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/providers/locale_provider.dart';

class LanguageToggleButton extends ConsumerWidget {
  const LanguageToggleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeProvider);
    final isSpanish = currentLocale.languageCode == 'es';

    return GestureDetector(
      onTap: () {
        ref.read(localeProvider.notifier).toggleLocale();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: kEscalaDeCinza700,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ES',
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSpanish ? FontWeight.bold : FontWeight.normal,
                color: isSpanish ? kAzulNormal : kEscalaDeCinza800,
              ),
            ),
            const SizedBox(width: 4),
            Container(
              width: 1,
              height: 12,
              color: Colors.grey,
            ),
            const SizedBox(width: 4),
            Text(
              'EN',
              style: TextStyle(
                fontSize: 12,
                fontWeight: !isSpanish ? FontWeight.bold : FontWeight.normal,
                color: !isSpanish ? kAzulNormal : kEscalaDeCinza800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

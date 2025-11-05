import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_list_provider.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';
import 'package:pokemon_app_global66/shared/widgets/primary_button_widget.dart';

class PokedexErrorScreen extends ConsumerWidget {
  const PokedexErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Image.asset(AssetsConstants.magikarpImage, height: 250),
          Text(
            local.errorTitle,
            textAlign: TextAlign.center,
            style: kErrorTitleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            local.errorDescription,
            textAlign: TextAlign.center,
            style: kErrorSubtitleTextStyle,
          ),
          const SizedBox(height: 20),
          PrimaryButtonWidget(
            text: local.buttonRetry,
            onPressed: () {
              ref.invalidate(pokemonListProvider);
            },
          ),
        ],
      ),
    );
  }
}

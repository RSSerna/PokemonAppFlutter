import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class RegionsScreen extends StatelessWidget {
  const RegionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Image.asset(AssetsConstants.jigglypuffImage, height: 250),
          Text(
            locale.regionsTitle,
            textAlign: TextAlign.center,
            style: kConstructionTitleTextStyle,
          ),
          SizedBox(height: 16),
          Text(
            locale.regionsDescription,
            textAlign: TextAlign.center,
            style: kConstructionSubtitleTextStyle,
          ),
        ],
      ),
    );
  }
}

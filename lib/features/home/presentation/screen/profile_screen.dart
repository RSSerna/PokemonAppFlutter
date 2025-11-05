import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';
import 'package:pokemon_app_global66/shared/widgets/language_toggle_button.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(locale.tabbarProfile),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsConstants.jigglypuffImage),
            const SizedBox(height: 50),
            _buildSection(
              context: context,
              child: _buildLanguageOption(context, locale),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required BuildContext context,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            // color: kEscalaDeCinza800,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: kEscalaDeCinza700,
            ),
          ),
          child: child,
        ),
      ],
    );
  }

  Widget _buildLanguageOption(BuildContext context, AppLocalizations locale) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locale.profileTitle,
                  style: kConstructionTitleTextStyle,
                ),
                const SizedBox(height: 4),
                Text(
                  locale.profileDescription,
                  style: kConstructionSubtitleTextStyle,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const LanguageToggleButton(),
        ],
      ),
    );
  }
}

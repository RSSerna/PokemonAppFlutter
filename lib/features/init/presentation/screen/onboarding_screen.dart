import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';
import 'package:pokemon_app_global66/router.dart';
import 'package:pokemon_app_global66/shared/widgets/language_toggle_button.dart';
import 'package:pokemon_app_global66/shared/widgets/primary_button_widget.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    OnboardingPage(
                      title: locale.onboardingTitle1,
                      description: locale.onboardingDescription1,
                      image: AssetsConstants.character1Image,
                    ),
                    OnboardingPage(
                      title: locale.onboardingTitle2,
                      description: locale.onboardingDescription2,
                      image: AssetsConstants.character2Image,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Container(
                    margin: EdgeInsets.all(4),
                    width: _currentPage == index ? 28 : 9,
                    height: 8,
                    decoration: BoxDecoration(
                      color:
                          _currentPage == index ? kAzulNormal : kAzulSemiLight,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              PrimaryButtonWidget(
                text: _currentPage == 1
                    ? locale.buttonStart
                    : locale.buttonContinue,
                onPressed: () {
                  if (_currentPage < 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    context.go(primaryRoute);
                  }
                },
              ),
              SizedBox(height: 32),
            ],
          ),
          Positioned(
            top: 16,
            right: 16,
            child: SafeArea(
              child: LanguageToggleButton(),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(image, height: 250),
          SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: kOnBoardingTitleTextStyle,
          ),
          SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: kOnBoardingSubtitleTextStyle,
          ),
        ],
      ),
    );
  }
}

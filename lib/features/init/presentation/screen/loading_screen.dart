import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/router.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    final Duration animationDuration = const Duration(seconds: 2);

    _rotationController = AnimationController(
      duration: animationDuration,
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(CurvedAnimation(
      parent: _rotationController,
      curve: Curves.easeInOut,
    ));

    _rotationController.repeat();
    _navigateToOnboarding(animationDuration);
  }

  Future<void> _navigateToOnboarding(Duration animationDuration) async {
    await Future.delayed(animationDuration);
    if (mounted) {
      context.go(onboardingRoute);
    }
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RotationTransition(
          turns: _rotationAnimation,
          child: Image.asset(
            AssetsConstants.pokeballSplashImage,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}

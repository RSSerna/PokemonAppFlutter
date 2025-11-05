import 'package:go_router/go_router.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/pokedex_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/primary_screen.dart';
import 'package:pokemon_app_global66/features/init/presentation/screen/loading_screen.dart';
import 'package:pokemon_app_global66/features/init/presentation/screen/onboarding_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: loadingRoute,
  routes: [
    GoRoute(
      path: loadingRoute,
      name: loadingName,
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: onboardingRoute,
      name: onboardingName,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: pokedexRoute,
      name: pokedexName,
      builder: (context, state) => const PokedexScreen(),
    ),
    GoRoute(
      path: primaryRoute,
      name: primaryName,
      builder: (context, state) => const PrimaryScreen(),
    ),
  ],
);

const String loadingRoute = '/';
const String onboardingRoute = '/onboarding';
const String pokedexRoute = '/pokedex';
const String primaryRoute = '/primary';

const String loadingName = 'loading';
const String onboardingName = 'onboarding';
const String pokedexName = 'pokedex';
const String primaryName = 'primary_screen';

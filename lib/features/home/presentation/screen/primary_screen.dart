import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/favorites_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/pokedex_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/profile_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/regions_screen.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int _currentIndex = 0;

  // Navigator keys for each tab to maintain independent navigation stacks
  final _pokedexNavigatorKey = GlobalKey<NavigatorState>();
  final _regionsNavigatorKey = GlobalKey<NavigatorState>();
  final _favoritesNavigatorKey = GlobalKey<NavigatorState>();
  final _profileNavigatorKey = GlobalKey<NavigatorState>();

  // Build a navigator for each tab
  Widget _buildNavigator(
      GlobalKey<NavigatorState> navigatorKey, Widget screen) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => screen,
        );
      },
    );
  }

  List<Widget> get _screens => [
        _buildNavigator(_pokedexNavigatorKey, const PokedexScreen()),
        _buildNavigator(_regionsNavigatorKey, const RegionsScreen()),
        _buildNavigator(_favoritesNavigatorKey, const FavoritesScreen()),
        _buildNavigator(_profileNavigatorKey, const ProfileScreen()),
      ];

  Widget _buildIcon(String assetPath, bool isSelected) {
    return SvgPicture.asset(
      assetPath,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
        isSelected ? kTapBarIconActive : ktTpBarIconDefault,
        BlendMode.srcIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: kTapBarIconActive, // Color del texto seleccionado
        unselectedItemColor:
            ktTpBarIconDefault, // Color del texto no seleccionado
        selectedLabelStyle: kSelectedLabelStyle,
        unselectedLabelStyle: kUnselectedLabelStyle,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(AssetsConstants.homeLogo, _currentIndex == 0),
            label: locale.tabbarPokedex,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(AssetsConstants.regionLogo, _currentIndex == 1),
            label: locale.tabbarRegions,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(AssetsConstants.heartTabLogo, _currentIndex == 2),
            label: locale.tabbarFavorite,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(AssetsConstants.profileLogo, _currentIndex == 3),
            label: locale.tabbarProfile,
          ),
        ],
      ),
    );
  }
}

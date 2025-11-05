import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/favorites_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/pokemon_card_widget.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final favoritesAsync = ref.watch(favoritesStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(locale.tabbarFavorite),
      ),
      body: favoritesAsync.when(
        data: (favorites) {
          if (favorites.isEmpty) {
            return _buildEmptyState(locale);
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: favorites.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final pokemon = favorites[index];
              return _FavoriteCard(pokemon: pokemon);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Error: ${error.toString()}'),
        ),
      ),
    );
  }

  Widget _buildEmptyState(AppLocalizations locale) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Image.asset(AssetsConstants.magikarpImage, height: 250),
          Text(
            locale.favoritesTitle,
            textAlign: TextAlign.center,
            style: kFavoriteTitleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            locale.favoritesDescription,
            textAlign: TextAlign.center,
            style: kFavoriteSubtitleTextStyle,
          ),
        ],
      ),
    );
  }
}

class _FavoriteCard extends ConsumerWidget {
  const _FavoriteCard({required this.pokemon});

  final PokemonDetailEntity pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Dismissible(
          key: Key('favorite_${pokemon.id}'),
          direction: DismissDirection.endToStart,
          background: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 24),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 32,
            ),
          ),
          onDismissed: (direction) {
            ref.read(favoritesNotifierProvider.notifier).toggleFavorite(
                  pokemon,
                  true,
                );
          },
          child: PokemonCardWidget(pokemon: pokemon, isFavorite: true)),
    );
  }
}

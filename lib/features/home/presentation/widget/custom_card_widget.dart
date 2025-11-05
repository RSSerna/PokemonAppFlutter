import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/favorites_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/detail_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/pokemon_card_widget.dart';
import 'package:pokemon_app_global66/shared/widgets/pokemon_card_skeleton.dart';

class CustomCardWidget extends ConsumerWidget {
  const CustomCardWidget({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = pokemon.name;
    final pokemonDetailAsync = ref.watch(pokemonDetailProvider(name));

    return pokemonDetailAsync.when(
      data: (pokemonDetail) {
        final isFavorite =
            ref.watch(isFavoritePokemonProvider(pokemonDetail.id));
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  name: pokemonDetail.name,
                  pokemonDetail: pokemonDetail,
                ),
              ),
            );
          },
          child: PokemonCardWidget(
            pokemon: pokemonDetail,
            isFavorite: isFavorite,
          ),
        );
      },
      loading: () => const PokemonCardSkeleton(),
      error: (error, stackTrace) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 102,
        decoration: BoxDecoration(
          color: Colors.red.withAlpha(76),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text('Error: ${error.toString()}')),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/core/util/extension_utils.dart';
import 'package:pokemon_app_global66/core/util/pokemon_utils.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/favorites_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/type_tag_widget.dart';

class PokemonCardWidget extends ConsumerWidget {
  const PokemonCardWidget({
    super.key,
    required this.pokemon,
    required this.isFavorite,
  });

  final PokemonDetailEntity pokemon;
  final bool isFavorite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = pokemon.id;
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

    final primaryType =
        pokemon.types.isNotEmpty ? pokemon.types.first.name : 'normal';
    final typeColor = getTypeColor(primaryType);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: typeColor.withAlpha(128),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('N°${id.formatNumber()}', style: kCardIdTextStyle),
                    Text(
                      pokemon.name.capitalize(),
                      style: kCardNameTextStyle,
                    ),
                    Row(
                      children: pokemon.types.map((type) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: TypeTagWidget(
                            color: getTypeColor(type.name),
                            logo: getTypeLogo(type.name),
                            element: type.name.capitalize(),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 126,
                  decoration: BoxDecoration(
                    color: typeColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.white, Colors.white10],
                            ).createShader(bounds);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              getTypeLogo(primaryType),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.network(
                          imageUrl,
                          width: 94,
                          height: 94,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      ref
                          .read(favoritesNotifierProvider.notifier)
                          .toggleFavorite(
                            pokemon,
                            isFavorite,
                          );
                    },
                    child: SvgPicture.asset(
                      isFavorite
                          ? AssetsConstants.heartRedFavLogo
                          : AssetsConstants.heartBasicFavLogo,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

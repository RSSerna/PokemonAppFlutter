import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon_app_global66/core/constants/assets_constants.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/core/util/extension_utils.dart';
import 'package:pokemon_app_global66/core/util/pokemon_type_helper.dart';
import 'package:pokemon_app_global66/core/util/pokemon_utils.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/ability_detail_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/favorites_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_species_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/type_tag_grid.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({
    super.key,
    required this.name,
    required this.pokemonDetail,
  });

  final String name;
  final PokemonDetailEntity pokemonDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final id = pokemonDetail.id;
    final imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';

    final primaryType = pokemonDetail.types.isNotEmpty
        ? pokemonDetail.types.first.name
        : 'normal';
    final typeColor = getTypeColor(primaryType);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: typeColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final isFavorite =
                  ref.watch(isFavoritePokemonProvider(pokemonDetail.id));
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  ref.read(favoritesNotifierProvider.notifier).toggleFavorite(
                        pokemonDetail,
                        isFavorite,
                      );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: SemiCircleClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      color: typeColor,
                    ),
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white10],
                    ).createShader(bounds);
                  },
                  child: Center(
                    child: SvgPicture.asset(
                      getTypeLogo(primaryType),
                      fit: BoxFit.contain,
                      height: 170,
                      width: 170,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 10,
                  child: Center(
                    child: Image.network(
                      imageUrl,
                      height: 260,
                      width: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            // Details section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name.capitalize(),
                    style: kDetailsTitleTextStyle,
                  ),
                  Text(
                    'N°${id.formatNumber()}',
                    style: kDetailsSubtitleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  TypeTagGrid(
                      types:
                          pokemonDetail.types.map((type) => type.name).toList(),
                      textOnError: 'Error getting types'),
                  const SizedBox(height: 16),
                  Consumer(
                    builder: (context, ref, child) {
                      final speciesAsync =
                          ref.watch(pokemonSpeciesProvider(pokemonDetail.id));
                      return speciesAsync.when(
                        data: (species) => Text(
                          species.flavorText,
                          style: kDetailsDecriptionTextStyle,
                        ),
                        loading: () => const SizedBox(
                          height: 40,
                          child: Center(
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                        ),
                        error: (error, stack) => Text(
                          'Error loading description',
                          style: kDetailsDecriptionTextStyle,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    color: kDividerColor,
                    thickness: 1,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _attributeData(
                        locale.detailPokemonWeight.toUpperCase(),
                        "${pokemonDetail.weight} kg",
                        AssetsConstants.weightLogo,
                      ),
                      const SizedBox(width: 24),
                      _attributeData(
                        locale.detailPokemonHeight.toUpperCase(),
                        "${pokemonDetail.height} m",
                        AssetsConstants.heightLogo,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Consumer(
                    builder: (context, ref, child) {
                      final speciesAsync =
                          ref.watch(pokemonSpeciesProvider(pokemonDetail.id));
                      return Row(
                        children: [
                          speciesAsync.when(
                            data: (species) => _attributeData(
                              locale.detailPokemonCategory.toUpperCase(),
                              species.category,
                              AssetsConstants.categoryLogo,
                            ),
                            loading: () => _attributeData(
                              locale.detailPokemonCategory.toUpperCase(),
                              "...",
                              AssetsConstants.categoryLogo,
                            ),
                            error: (error, stack) => _attributeData(
                              locale.detailPokemonCategory.toUpperCase(),
                              "N/A",
                              AssetsConstants.categoryLogo,
                            ),
                          ),
                          const SizedBox(width: 24),
                          pokemonDetail.abilities.isNotEmpty
                              ? Consumer(
                                  builder: (context, ref, child) {
                                    final abilityAsync = ref.watch(
                                      abilityDetailProvider(
                                          pokemonDetail.abilities.first.name),
                                    );
                                    return abilityAsync.when(
                                      data: (ability) => _attributeData(
                                        locale.detailPokemonAbilities
                                            .toUpperCase(),
                                        ability.localizedName,
                                        AssetsConstants.pokeballLogo,
                                      ),
                                      loading: () => _attributeData(
                                        locale.detailPokemonAbilities
                                            .toUpperCase(),
                                        "...",
                                        AssetsConstants.pokeballLogo,
                                      ),
                                      error: (error, stack) => _attributeData(
                                        locale.detailPokemonAbilities
                                            .toUpperCase(),
                                        pokemonDetail.abilities.first.name
                                            .capitalize(),
                                        AssetsConstants.pokeballLogo,
                                      ),
                                    );
                                  },
                                )
                              : _attributeData(
                                  locale.detailPokemonAbilities.toUpperCase(),
                                  "N/A",
                                  AssetsConstants.pokeballLogo,
                                ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(locale.detailPokemonWeakness,
                      style: kDetailsWeaknessTextStyle),
                  const SizedBox(height: 16),
                  TypeTagGrid(
                    types: PokemonTypeHelper.calculateWeaknesses(
                      pokemonDetail.types.map((type) => type.name).toList(),
                    ),
                    textOnError: 'No weaknesses found',
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _attributeData(String title, String content, String icon) {
  return Expanded(
    child: Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 6),
            Text(
              title,
              style: kDetailsAttributesTitleTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: kDividerColor,
              width: 1.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
                child: Text(content, style: kDetailsAttributesDataTextStyle)),
          ),
        ),
      ],
    ),
  );
}

class SemiCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height * 0.4);

    path.quadraticBezierTo(size.width * 0.5, size.height, 0, size.height * 0.4);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

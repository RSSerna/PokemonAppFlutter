import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_list_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/search_filter_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/screen/pokedex_error_screen.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/custom_card_widget.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/search_bar_widget.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class PokedexScreen extends ConsumerWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(filteredPokemonListProvider);
    final filterState = ref.watch(searchFilterProvider);
    final hasActiveFilters =
        filterState.isSearchActive && filterState.selectedTypes.isNotEmpty;
    final locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        const SearchBarWidget(),
        Expanded(
          child: pokemonAsync.when(
            data: (pokemonList) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (hasActiveFilters)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: RichText(
                      text: TextSpan(
                        style: kTextFindsResult,
                        children: [
                          TextSpan(text: locale.filterResult),
                          TextSpan(
                            text:
                                ' ${pokemonList.length} ${locale.filterResult2} ',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                ref
                                    .read(searchFilterProvider.notifier)
                                    .clearFilters();
                              },
                              child: Text(
                                locale.filterDelete,
                                style: kTextFindsEraseResult,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                // Pokemon List
                Expanded(
                  child: ListView.separated(
                    itemCount: pokemonList.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final pokemon = pokemonList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomCardWidget(pokemon: pokemon),
                      );
                    },
                  ),
                ),
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => const PokedexErrorScreen(),
          ),
        ),
      ],
    );
  }
}

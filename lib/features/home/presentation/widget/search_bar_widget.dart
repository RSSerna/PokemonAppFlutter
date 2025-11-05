import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/core/util/pokemon_utils.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/search_filter_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/filter_modal_widget.dart';
import 'package:pokemon_app_global66/l10n/app_localizations.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _showFilterModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const FilterModalWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filterState = ref.watch(searchFilterProvider);
    final locale = AppLocalizations.of(context)!;

    // Build display text for selected filters
    String displayText = '';
    if (filterState.selectedTypes.isNotEmpty) {
      final typeNames = filterState.selectedTypes
          .map((type) => getTypeTranslation(type))
          .join(', ');
      displayText = typeNames;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: _showFilterModal,
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(
                    color: Colors.grey[300]!,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[400],
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          displayText.isEmpty
                              ? locale.filterSearchBar
                              : displayText,
                          style: kSearchbarTextStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              ref.read(searchFilterProvider.notifier).executeSearch();
            },
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300]!,
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.search_sharp,
                color: Colors.grey[600],
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFilterState {
  final String searchQuery;
  final Set<String> selectedTypes;
  final bool isSearchActive;

  const SearchFilterState({
    this.searchQuery = '',
    this.selectedTypes = const {},
    this.isSearchActive = false,
  });

  SearchFilterState copyWith({
    String? searchQuery,
    Set<String>? selectedTypes,
    bool? isSearchActive,
  }) {
    return SearchFilterState(
      searchQuery: searchQuery ?? this.searchQuery,
      selectedTypes: selectedTypes ?? this.selectedTypes,
      isSearchActive: isSearchActive ?? this.isSearchActive,
    );
  }
}

/// Notifier for managing search and filter state
class SearchFilterNotifier extends StateNotifier<SearchFilterState> {
  SearchFilterNotifier() : super(const SearchFilterState());

  void updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void toggleType(String type) {
    final newTypes = Set<String>.from(state.selectedTypes);
    if (newTypes.contains(type)) {
      newTypes.remove(type);
    } else {
      newTypes.add(type);
    }
    state = state.copyWith(selectedTypes: newTypes);
  }

  void clearFilters() {
    state = state.copyWith(selectedTypes: {}, isSearchActive: false);
  }

  void applyFilters(Set<String> types) {
    state = state.copyWith(selectedTypes: types, isSearchActive: true);
  }

  void clearSearch() {
    state = state.copyWith(searchQuery: '', isSearchActive: false);
  }

  void executeSearch() {
    state = state.copyWith(isSearchActive: true);
  }

  void resetSearch() {
    state = const SearchFilterState();
  }
}

/// Provider for search and filter state
final searchFilterProvider =
    StateNotifierProvider<SearchFilterNotifier, SearchFilterState>((ref) {
  return SearchFilterNotifier();
});

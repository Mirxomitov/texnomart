part of 'selected_category_bloc.dart';

class SelectedCategoryState {
  final String slug;
  final String sort;
  final int page;

  final ChipsUIModel? chips;
  final ProductAllCategory? products;

  factory SelectedCategoryState.initial(String slug) {
    return SelectedCategoryState(
      slug: slug,
      sort: '-popular',
      page: 1,
    );
  }

  SelectedCategoryState({
    required this.slug,
    required this.page,
    required this.sort,
    this.chips,
    this.products,
  });

  SelectedCategoryState copyWith({
    String? slug,
    String? sort,
    int? page,
    ChipsUIModel? chips,
    ProductAllCategory? products,
  }) {
    return SelectedCategoryState(
      slug: slug ?? this.slug,
      sort: sort ?? this.sort,
      page: page ?? this.page,
      chips: chips ?? this.chips,
      products: products ?? this.products,
    );
  }
}

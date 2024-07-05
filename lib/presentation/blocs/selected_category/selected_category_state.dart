part of 'selected_category_bloc.dart';

class SelectedCategoryState {
  final Status status;

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
      status: Status.initial,
    );
  }

  SelectedCategoryState({
    required this.slug,
    required this.page,
    required this.sort,
    this.chips,
    this.products,
    required this.status,
  });

  SelectedCategoryState copyWith({
    String? slug,
    String? sort,
    int? page,
    ChipsUIModel? chips,
    ProductAllCategory? products,
    Status? status,
  }) {
    return SelectedCategoryState(
      slug: slug ?? this.slug,
      sort: sort ?? this.sort,
      page: page ?? this.page,
      chips: chips ?? this.chips,
      products: products ?? this.products,
      status: status ?? this.status,
    );
  }
}

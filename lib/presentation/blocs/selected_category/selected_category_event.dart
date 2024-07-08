part of 'selected_category_bloc.dart';

abstract class SelectedCategoryEvent {}

final class LoadChipsEvent extends SelectedCategoryEvent {}

final class LoadAllProductEvent extends SelectedCategoryEvent {}

final class LoadAllEvent extends SelectedCategoryEvent {}

final class AddToBasket extends SelectedCategoryEvent {
  final BasketModel data;

  AddToBasket({required this.data});
}

final class RemoveFromBasket extends SelectedCategoryEvent {
  final BasketModel data;

  RemoveFromBasket({required this.data});
}

final class SelectChips extends SelectedCategoryEvent {
  final String chips;

  SelectChips({required this.chips});
}

final class RemoveChips extends SelectedCategoryEvent {}

final class ChangeSort extends SelectedCategoryEvent {
  final String sort;

  ChangeSort({required this.sort});
}
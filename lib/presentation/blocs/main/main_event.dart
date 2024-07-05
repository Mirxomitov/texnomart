part of 'main_bloc.dart';

abstract class MainEvent {}

final class ChangeBottomNavigation extends MainEvent {
  final int chosenIndex;

  ChangeBottomNavigation({required this.chosenIndex});
}

final class LoadCatalogMenu extends MainEvent {}

final class AddToBasket extends MainEvent {
  final BasketModel data;

  AddToBasket({required this.data});
}

part of 'basket_bloc.dart';

abstract class BasketEvent {}

final class AddToBasketEvent extends BasketEvent {
  final BasketModel data;

  AddToBasketEvent({required this.data});
}

final class DeleteFromBasketEvent extends BasketEvent {
  final BasketModel data;

  DeleteFromBasketEvent({required this.data});
}

final class DeleteFromBasketById extends BasketEvent {
  final int id;

  DeleteFromBasketById({required this.id});
}

final class LoadBasketData extends BasketEvent {}

final class RemoveProduct extends BasketEvent {
  final int index;

  RemoveProduct({required this.index});
}

final class ChangeAllChecks extends BasketEvent {}

final class OnClickCheckBox extends BasketEvent {
  final int index;

  OnClickCheckBox({required this.index});
}

final class Increment extends BasketEvent {
  final int index;

  Increment({required this.index});
}

final class Decrement extends BasketEvent {
  final int index;

  Decrement({required this.index});
}

final class AddToFavorite extends BasketEvent {
  final int index;

  AddToFavorite({required this.index});
}

final class RemoveFromFavorite extends BasketEvent {
  final int index;

  RemoveFromFavorite({required this.index});
}

/*
  all checked
  list basketdata box
  all price
  all count = basketList.length


* */
part of 'product_details_bloc.dart';

abstract class ProductDetailsEvent {}

final class LoadProductDetailsEvent extends ProductDetailsEvent {}

final class AddToBasket extends ProductDetailsEvent {
  final bool inBasket;
  final BasketModel data;

  AddToBasket({
    required this.inBasket,
    required this.data,
  });
}

final class AddToFavourites extends ProductDetailsEvent {}

final class RemoveFromFavourites extends ProductDetailsEvent {}

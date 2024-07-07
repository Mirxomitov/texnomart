part of 'favorite_bloc.dart';

abstract class FavoriteEvent {}

final class LoadFavorites extends FavoriteEvent {}

final class AddToFavorite extends FavoriteEvent {
  final FavouriteModel data;

  AddToFavorite(this.data);
}

final class RemoveFromFavorite extends FavoriteEvent {
  final FavouriteModel data;

  RemoveFromFavorite(this.data);
}

final class AddToBasket extends FavoriteEvent {
  final FavouriteModel data;

  AddToBasket({required this.data});
}

final class RemoveFromBasket extends FavoriteEvent {
  final FavouriteModel data;

  RemoveFromBasket({required this.data});
}
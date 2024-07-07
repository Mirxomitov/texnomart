part of 'favorite_bloc.dart';

class FavoriteState {
  final List<FavouriteModel> favoriteBasketList;

  FavoriteState({
    required this.favoriteBasketList,
  });

  FavoriteState copyWith({
    List<FavouriteModel>? favoriteBasketList,
  }) {
    return FavoriteState(
      favoriteBasketList: favoriteBasketList ?? this.favoriteBasketList,
    );
  }

  factory FavoriteState.initial() {
    return FavoriteState(
      favoriteBasketList: [],
    );
  }
}

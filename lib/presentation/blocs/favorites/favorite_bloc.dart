import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/favourite_model/favourite_model.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState.initial()) {
    on<LoadFavorites>((event, emit) {
      print('LoadFavorites');
      emit(state.copyWith(favoriteBasketList: MainRepository.loadFavourites()));
    });
    on<AddToFavorite>((event, emit) {
      print('AddToFavorite');
      MainRepository.addToFavourite(event.data);
      emit(state.copyWith(favoriteBasketList: [...state.favoriteBasketList, event.data]));
    });
    on<RemoveFromFavorite>((event, emit) {
      print('RemoveFromFavorite');
      MainRepository.removeFromFavourite(event.data);
      final ls = state.favoriteBasketList;
      ls.remove(event.data);
      emit(state.copyWith(favoriteBasketList: ls));
    });
    on<AddToBasket>((event, emit) {
      print('AddToBasket');
      MainRepository.addToBasketById(event.data.productId);
      var ls = state.favoriteBasketList;

      final value = ls.firstWhere((e) => e.productId == event.data.productId).copy(isInBasket: true);
      ls = ls.map((e) => e.productId == event.data.productId ? value : e).toList();

      emit(state.copyWith(favoriteBasketList: ls));
    });
    on<RemoveFromBasket>((event, emit) {
      print('RemoveFromBasket');
      MainRepository.removeFavoriteFromBasket(event.data);
      emit(state.copyWith(
          favoriteBasketList: state.favoriteBasketList
              .map(
                (e) => e.productId == event.data.productId ? e.copy(isInBasket: false) : e,
              )
              .toList()));
    });
  }
}

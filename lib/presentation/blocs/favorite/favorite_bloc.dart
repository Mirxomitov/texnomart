import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';
import 'package:texnomart/presentation/blocs/product_details/product_details_bloc.dart';

import '../../../data/model/favourite_model/favourite_model.dart';

part 'favorite_event.dart';

part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState.initial()) {
    on<LoadFavorites>((event, emit) {
      emit(state.copyWith(favoriteBasketList: MainRepository.loadFavourites()));
    });
    on<AddToFavorite>((event, emit) {
      MainRepository.addToFavourite(event.data);
    });
    on<RemoveFromFavorite>((event, emit) {
      MainRepository.removeFromFavourite(event.data);
    });
  }
}

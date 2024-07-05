import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/favourite_model/favourite_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/basket_model/basket_model.dart';
import '../../../data/model/product_details_model.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final _repository = di<MainRepository>();

  ProductDetailsBloc({required int productId}) : super(ProductDetailsState.initial(productId)) {
    on<LoadProductDetailsEvent>((event, emit) => _loadDetails(event, emit));
    on<AddToFavourites>((event, emit) {
      final favourite = FavouriteModel(
        productId: state.productData!.data.data.id,
        image: state.productData!.data.data.smallImages[1],
        name: state.productData!.data.data.name,
        price: state.productData!.data.data.salePrice.toDouble(),
        isInBasket: state.inBasket,
      );

      MainRepository.addToFavourite(favourite);
      emit(state.copyWith(isFavourite: true));

      print("is favourite: $favourite");

      print('all favourites: ${MainRepository.loadFavourites()}');
    });
    on<RemoveFromFavourites>((event, emit) {
      final favourite = FavouriteModel(
        productId: state.productData!.data.data.id,
        image: state.productData!.data.data.smallImages[1],
        name: state.productData!.data.data.name,
        price: state.productData!.data.data.salePrice.toDouble(),
        isInBasket: state.inBasket,
      );

      MainRepository.removeFromFavourite(favourite);
      emit(state.copyWith(isFavourite: false));
      print("is favourite: ${state.isFavourite}");

      print('all favourites: ${MainRepository.loadFavourites()}');
    });
    on<AddToBasket>((event, emit) {
      if (event.inBasket) {
        MainRepository.addToBasket(event.data);
      } else {
        MainRepository.removeFromBasket(event.data);
      }
      emit(state.copyWith(inBasket: event.inBasket));
    });
  }

  _loadDetails(LoadProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    final res = await _repository.getProduct("${state.productId}");
    bool addedToBasket = state._checkHasInBasket(state.productId);
    bool isFavourite = state._checkIsFavourite(state.productId);

    emit(state.copyWith(productData: res, inBasket: addedToBasket, isFavourite: isFavourite, status: Status.success));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
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
    on<AddToBasket>((event, emit) {
      if (event.inBasket) {
        _repository.addToBasket(event.data);
      } else {
        _repository.removeFromBasket(event.data);
      }
      emit(state.copyWith(inBasket: event.inBasket));
    });
  }

  _loadDetails(LoadProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    final res = await _repository.getProduct("${state.productId}");
    bool addedToBasket = state._checkHasInBasket(state.productId);

    emit(state.copyWith(productData: res, inBasket: addedToBasket));
  }
}

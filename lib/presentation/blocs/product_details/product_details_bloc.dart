import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/product_details_model.dart';
import '../../../di/di.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final _repository = di<MainRepository>();

  ProductDetailsBloc({required int productId}) : super(ProductDetailsState.initial(productId)) {
    on<LoadProductDetailsEvent>((event, emit) => _loadDetails(event, emit));
  }

  _loadDetails(LoadProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    final res = await _repository.getProduct("${state.productId}");
    emit(state.copyWith(productData: res));
  }
}

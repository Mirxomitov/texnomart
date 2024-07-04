import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/chips_model.dart';
import '../../../data/source/remote/response/product_all_category/products_all_category.dart';
import '../../../di/di.dart';

part 'selected_category_event.dart';
part 'selected_category_state.dart';

class SelectedCategoryBloc extends Bloc<SelectedCategoryEvent, SelectedCategoryState> {
  final _repository = di<MainRepository>();

  SelectedCategoryBloc({required String slug}) : super(SelectedCategoryState.initial(slug)) {
    on<LoadAllProductEvent>((event, emit) => _loadAllProducts(event, emit));
    on<LoadChipsEvent>((event, emit) => _loadChips(event, emit));
    on<LoadAllEvent>((event, emit) => _loadAll(event, emit));
  }

  _loadAllProducts(LoadAllProductEvent event, Emitter<SelectedCategoryState> emit) async {
    final value = await _repository.getAllProducts(state.slug, '-popular', 1);
    print("products by slag: ${state.slug} value: $value");
    emit(state.copyWith(products: value));
  }

  _loadChips(LoadChipsEvent event, Emitter<SelectedCategoryState> emit) async {
    final value = await _repository.getChips(state.slug);
    emit(state.copyWith(chips: value));
  }

  _loadAll(LoadAllEvent event, Emitter<SelectedCategoryState> emit) {
    add(LoadChipsEvent());
    add(LoadAllProductEvent());
  }
}

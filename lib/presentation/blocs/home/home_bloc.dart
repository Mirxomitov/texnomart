import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../../../data/model/special_categories_model.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final _repository = di<MainRepository>();

  HomeBloc() : super(HomeState.initial()) {
    on<LoadAllFromApi>((event, emit) => _loadAllFromApi(event, emit));

    on<LoadSliders>((event, emit) => _loadSliders(event, emit));
    on<LoadSpecialCategories>((event, emit) => _loadSpecialCategories(event, emit));
    on<LoadHitProducts>((event, emit) => _loadHitProducts(event, emit));
  }

  // All at once
  _loadAllFromApi(LoadAllFromApi event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final value = await Future.wait([
      _repository.getSliders(),
      _repository.getSpecialCategories(),
      _repository.getHitProducts(),
    ]);

    emit(state.copyWith(
      status: Status.success,
      sliders: value[0] as SliderModel,
      specialCategoriesModel: value[1] as SpecialCategoriesModel,
      hitProducts: value[2] as HitProductsUIModel,
    ));

    print('emitted value $value');
  }

  _loadSliders(LoadSliders event, Emitter<HomeState> emit) async {
    final sliders = await _repository.getSliders();
    emit(state.copyWith(sliders: sliders, status: Status.success));
  }

  _loadSpecialCategories(LoadSpecialCategories event, Emitter<HomeState> emit) async {
    final specialCategories = await _repository.getSpecialCategories();
    emit(state.copyWith(specialCategoriesModel: specialCategories, status: Status.success));
  }

  _loadHitProducts(LoadHitProducts event, Emitter<HomeState> emit) async {
    final hitProducts = await _repository.getHitProducts();
    print('hit products: $hitProducts');
    emit(state.copyWith(hitProducts: hitProducts, status: Status.success));
  }
}

/*
 // print('on load all from api at once');
    // Future.wait([
    //   _repository.getSliders(),
    //   _repository.getSpecialCategories(),
    // ]).then(
    //   (value) {
    //     emit(state.copyWith(
    //       sliders: value[0] as SliderModel,
    //       specialCategoriesModel: value[1] as SpecialCategoriesModel,
    //     ));
    //     print('on load all from api at once EMITTED');
    //   },
    // );
 */

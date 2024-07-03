part of 'home_bloc.dart';

class HomeState {
  final Status status;

  final SliderModel? sliders;
  final SpecialCategoriesModel? specialCategoriesModel;
  final HitProductsUIModel? hitProducts;

  factory HomeState.initial() {
    return HomeState(status: Status.initial);
  }

  HomeState copyWith({
    SliderModel? sliders,
    SpecialCategoriesModel? specialCategoriesModel,
    Status? status,
    HitProductsUIModel? hitProducts,
  }) {
    return HomeState(
      sliders: sliders ?? this.sliders,
      specialCategoriesModel: specialCategoriesModel ?? this.specialCategoriesModel,
      status: status ?? this.status,
      hitProducts: hitProducts ?? this.hitProducts,
    );
  }

  HomeState({
    this.sliders,
    this.specialCategoriesModel,
    required this.status,
    this.hitProducts,
  });

  @override
  String toString() {
    return 'HomeState(sliders: $sliders, specialCategoriesModel: $specialCategoriesModel, status: $status, hitProducts: $hitProducts)';
  }
}

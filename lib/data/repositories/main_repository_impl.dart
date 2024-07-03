import 'package:dio/dio.dart';
import 'package:texnomart/data/model/catalog_menu_model.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';
import 'package:texnomart/data/source/remote/service/api_catalog_menu.dart';
import 'package:texnomart/data/source/remote/service/api_sliders.dart';
import 'package:texnomart/data/source/remote/service/api_special_categories.dart';
import 'package:texnomart/data/source/remote/service/api_top_categories.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/domain/converter/converter.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../source/remote/service/api_hit_products.dart';

class MainRepositoryImpl extends MainRepository {
  final _apiSliders = di<ApiSliders>();
  final _apiTopCategories = di<ApiTopCategories>();
  final _apiSpecialCategories = di<ApiSpecialCategories>();
  final _apiHitProducts = di<ApiHitProducts>();
  final _apiCatalogMenu = di<ApiCatalogMenu>();

  @override
  Future<SliderModel> getSliders() async {
    try {
      final sliders = await _apiSliders.getSliders();
      return Converter.sliderResponseToModel(sliders);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<TopCategoriesModel> getTopCategories() async {
    try {
      final topCategories = await _apiTopCategories.getTopCategories();
      return Converter.topCategoriesResponseToModel(topCategories);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialCategoriesModel> getSpecialCategories() async {
    try {
      final specialCategories = await _apiSpecialCategories.getSpecialCategories();
      return Converter.specialCategoriesResponseToModel(specialCategories);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<HitProductsUIModel> getHitProducts() async {
    try {
      final hitProducts = await _apiHitProducts.getHitProducts();
      return Converter.hitProductsResponseToUIModel(hitProducts);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<CatalogMenuUIModel> getCatalogs() async {
    final catalogs = await _apiCatalogMenu.getCatalogs();
    return Converter.convertCatalogMenuResponseToUIModel(catalogs);
  }
}

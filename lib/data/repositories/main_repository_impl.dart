import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';
import 'package:texnomart/data/source/remote/response/catalog_menu/catalog_menu.dart';
import 'package:texnomart/data/source/remote/service/api_catalog_menu.dart';
import 'package:texnomart/data/source/remote/service/api_product_all.dart';
import 'package:texnomart/data/source/remote/service/api_product_details.dart';
import 'package:texnomart/data/source/remote/service/api_sliders.dart';
import 'package:texnomart/data/source/remote/service/api_special_categories.dart';
import 'package:texnomart/data/source/remote/service/api_top_categories.dart';
import 'package:texnomart/di/di.dart';
import 'package:texnomart/domain/converter/converter.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';

import '../model/basket_model/basket_model.dart';
import '../model/chips_model.dart';
import '../model/product_details_model.dart';
import '../source/local/hive/hive_helper.dart';
import '../source/remote/response/product_all_category/products_all_category.dart';
import '../source/remote/service/api_chips.dart';
import '../source/remote/service/api_hit_products.dart';

class MainRepositoryImpl extends MainRepository {
  final _apiSliders = di<ApiSliders>();
  final _apiTopCategories = di<ApiTopCategories>();
  final _apiSpecialCategories = di<ApiSpecialCategories>();
  final _apiHitProducts = di<ApiHitProducts>();
  final _apiCatalogMenu = di<ApiCatalogMenu>();
  final _apiProductDetails = di<ApiProductDetails>();
  final _apiProductAll = di<ApiProductAll>();
  final _apiChips = di<ApiChips>();

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
  Future<CatalogMenu> getCatalogs() async {
    return await _apiCatalogMenu.getCatalogs();
  }

  @override
  Future<ProductDetailModel> getProduct(String id) async {
    final res = await _apiProductDetails.getProductDetail(id: id);
    return Converter.convertProductDetailResponseToModel(res);
  }

  @override
  Future<ProductAllCategory> getAllProducts(String slug, String sort, int page) async {
    return await _apiProductAll.getCategoryProductSimple(slug: slug, sort: sort);
  }

  @override
  Future<ChipsUIModel> getChips(String slug) async {
    final value = await _apiChips.getChips(slug: slug);
    return Converter.convertChipsResponseToUIModel(value);
  }

  @override
  List<BasketModel> getBasketData() {
    return Hive.box<BasketModel>(HiveHelper.basketPath).values.toList();
  }
}


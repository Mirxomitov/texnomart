import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';

import '../../data/source/remote/response/catalog_menu.dart';

abstract class MainRepository {
  Future<SliderModel> getSliders();

  Future<TopCategoriesModel> getTopCategories();

  Future<SpecialCategoriesModel> getSpecialCategories();

  Future<HitProductsUIModel> getHitProducts();

  Future<CatalogMenu> getCatalogs();
}

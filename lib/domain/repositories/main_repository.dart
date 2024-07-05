import 'package:texnomart/data/model/chips_model.dart';
import 'package:texnomart/data/model/hit_products_model.dart';
import 'package:texnomart/data/model/product_details_model.dart';
import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';
import 'package:texnomart/data/source/local/hive/hive_helper.dart';

import '../../data/model/basket_model/basket_model.dart';
import '../../data/model/favourite_model/favourite_model.dart';
import '../../data/source/remote/response/catalog_menu/catalog_menu.dart';
import '../../data/source/remote/response/product_all_category/products_all_category.dart';

abstract class MainRepository {
  static Set<BasketModel> basketData = HiveHelper.basket.values.toList().toSet();
  static Set<FavouriteModel> favouriteData = HiveHelper.favourite.values.toList().toSet();

  void addToBasket(BasketModel data) {
    basketData.add(data);
    HiveHelper.basket.add(data);
  }

  void removeFromBasket(BasketModel data) {
    basketData.remove(data);
    HiveHelper.deleteBasketData(data);
  }

  void addToFavourite(FavouriteModel data) {
    HiveHelper.favourite.add(data);
  }

  void removeFromFavourite(FavouriteModel data) {
    HiveHelper.deleteFavouriteData(data);
  }

  Future<SliderModel> getSliders();

  Future<TopCategoriesModel> getTopCategories();

  Future<SpecialCategoriesModel> getSpecialCategories();

  Future<HitProductsUIModel> getHitProducts();

  Future<CatalogMenu> getCatalogs();

  Future<ProductDetailModel> getProduct(String id);

  Future<ProductAllCategory> getAllProducts(String slug, String sort, int page);

  Future<ChipsUIModel> getChips(String slug);
}


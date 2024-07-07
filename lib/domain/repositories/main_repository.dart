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
  static void addToBasket(BasketModel data) {
    print('addToBasket');
    HiveHelper.basket.add(data);
  }

  static void removeFromBasket(BasketModel data) {
    print('removeFromBasket');
    HiveHelper.deleteBasketData(data);
  }

  static void removeFavoriteFromBasket(FavouriteModel data) {
    print('removeFavoriteFromBasket');
    final product = HiveHelper.basket.values.firstWhere((element) => element.productId == data.productId.toString());
    HiveHelper.deleteBasketData(product);
  }

  static void addToFavourite(FavouriteModel data) {
    print('addToFavourite');
    HiveHelper.addToFavourite(data);
  }

  static List<FavouriteModel> loadFavourites() {
    final basket = HiveHelper.basket.values.toList();
    final favourite = HiveHelper.favourite.values.toList();

    print("loadFavourites basket data: $basket");
    print("loadFavourites favourite: $favourite");
    final basketSet = basket.map((e) => e.productId).toSet();

    return favourite.map((e) => e.copy(isInBasket: basketSet.contains(e.productId.toString()))).toList();
  }

  static void removeFromFavourite(FavouriteModel data) {
    print('removeFromFavourite');
    HiveHelper.deleteFavouriteData(data);
  }

  static void addToBasketById(int productId) {
    print('addToBasketById');
    final product = HiveHelper.favourite.values.firstWhere((element) => element.productId == productId);
    HiveHelper.basket.add(FavouriteModel.toBasketModel(product));
  }

  static void removeFromBasketById(int productId) {
    print('removeFromBasketById');
    final product = HiveHelper.basket.values.firstWhere((element) => element.productId == productId.toString());
    HiveHelper.deleteBasketData(product);
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


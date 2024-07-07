import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';
import 'package:texnomart/data/model/favourite_model/favourite_model.dart';

class HiveHelper {
  static String basketPath = 'basket';
  static String favouritePath = 'favourite';

  static late Box<BasketModel> basket;
  static late Box<FavouriteModel> favourite;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    basket = await Hive.openBox<BasketModel>(basketPath);
    favourite = await Hive.openBox<FavouriteModel>(favouritePath);
  }

  static void deleteFavouriteData(FavouriteModel data) {
    final value = favourite.values.firstWhere((element) => element.productId == data.productId);
    favourite.delete(value.key);
  }

  static bool deleteBasketData(BasketModel data) {
    final value = basket.values.firstWhere((element) => element.productId == data.productId);

    basket.delete(value.key);
    return true;
  }

  // here we are adding the data to the basket
  static void addToFavourite(FavouriteModel data) {
    for (int i = 0; i < favourite.values.length; ++i) {
      if (data.productId == favourite.values.elementAt(i).productId) {
        print('already in favourite');
        return;
      }
    }

    favourite.add(data);
    print('addToFavourite ${data.name} ${data.productId}');
  }

  static bool hasInBasket(int productId) {
    for (var value in basket.values) {
      if (value.productId == '$productId') {
        print('has not in basket $productId');
        return true;
      }
    }

    print('has not in basket $productId');

    return false;
  }

  static bool hasInFavourite(int productId) {
    for (var value in favourite.values) {
      if (value.productId == productId) {
        print('has in favourite $productId');
        return true;
      }
    }

    print('has not in favourite $productId');

    return false;
  }

  static void deleteFavouriteDataById(int id) {
    final value = favourite.values.firstWhere((element) => element.productId == id);
    favourite.delete(value.key);
    print('deleteFavouriteDataById $id name: ${value.name}');
  }

  static void deleteBasketDataById(int id) {
    final value = basket.values.firstWhere((element) => element.productId == id.toString());
    basket.delete(value.key);
    print('deleteBasketDataById $id name: ${value.name}');
  }

  static List<BasketModel> getBasketList() {
    final favoriteSet = favourite.values.map((e) => e.productId.toString()).toSet();

    return basket.values.toList().map((e) => e.copy(isFavourite: favoriteSet.contains(e.productId))).toList();
  }
}

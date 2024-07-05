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

  static bool has(int productId) {
    for (var value in basket.values) {
      if (value.productId == '$productId') return true;
    }

    return false;
  }
}

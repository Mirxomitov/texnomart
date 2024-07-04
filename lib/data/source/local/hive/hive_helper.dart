import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texnomart/data/model/basket_model/basket_model.dart';

class HiveHelper {
  static String basketPath = 'basket';
  static late Box<BasketModel> basket;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    basket = await Hive.openBox<BasketModel>(basketPath);
  }

  bool addBasketData(BasketModel data) {
    basket.add(data);
    return true;
  }

  bool deleteBasketData(BasketModel data) {
    final value = basket.values.firstWhere((element) => element.productId == data.productId);

    basket.delete(value.key);
    return true;
  }
}

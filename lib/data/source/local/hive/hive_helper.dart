import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../../model/hit_products_model.dart';

class HiveHelper {

  static String basketPath = 'basket';
  static late Box basket;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    basket = await Hive.openBox(basketPath);
  }

  void saveToBasket() {}
}

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'app/app.dart';
import 'data/model/basket_model/basket_model.dart';
import 'data/model/favourite_model/favourite_model.dart';
import 'data/source/local/hive/hive_helper.dart';
import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(BasketModelAdapter());
  Hive.registerAdapter(FavouriteModelAdapter());
  await HiveHelper.init();
  runApp(const MyApp());
}

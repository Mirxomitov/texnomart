import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texnomart/di/di.dart';


import 'app/app.dart';
import 'data/source/local/hive/hive_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
//  Hive.registerAdapter(ContactHiveAdapter());
  //await PrefHelper.init();
  await HiveHelper.init();
  runApp(const MyApp());
}

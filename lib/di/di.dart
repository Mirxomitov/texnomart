import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:texnomart/data/repositories/main_repository_impl.dart';
import 'package:texnomart/data/source/remote/service/api_catalog_menu.dart';
import 'package:texnomart/data/source/remote/service/api_product_details.dart';
import 'package:texnomart/data/source/remote/service/api_sliders.dart';
import 'package:texnomart/domain/repositories/main_repository.dart';
import 'package:texnomart/utils/commons.dart';

import '../data/source/remote/service/api_chips.dart';
import '../data/source/remote/service/api_hit_products.dart';
import '../data/source/remote/service/api_product_all.dart';
import '../data/source/remote/service/api_special_categories.dart';
import '../data/source/remote/service/api_top_categories.dart';

final di = GetIt.instance;

void setup() {
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printRequestData: true,
        printResponseData: true,
        printResponseHeaders: true,
        printResponseMessage: true,
      ),
    ),
  );

  ///
  // APIs
  ///
  di.registerSingleton<ApiSliders>(ApiSliders(dio));
  di.registerSingleton<ApiTopCategories>(ApiTopCategories(dio));
  di.registerSingleton<ApiSpecialCategories>(ApiSpecialCategories(dio));
  di.registerSingleton<ApiHitProducts>(ApiHitProducts(dio));
  di.registerSingleton<ApiCatalogMenu>(ApiCatalogMenu(dio));
  di.registerSingleton<ApiProductAll>(ApiProductAll(dio));
  di.registerSingleton<ApiProductDetails>(ApiProductDetails(dio));
  di.registerSingleton<ApiChips>(ApiChips(dio));
  ///
  // repositories
  ///
  di.registerSingleton<MainRepository>(MainRepositoryImpl());
}

final dio = Dio(BaseOptions(
  baseUrl: baseUrl,
));

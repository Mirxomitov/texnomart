// home/special-products?type=hit_products
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/catalog_menu/catalog_menu.dart';

part 'api_catalog_menu.g.dart';

@RestApi()
abstract class ApiCatalogMenu {
  factory ApiCatalogMenu(Dio dio, {String baseUrl}) = _ApiCatalogMenu;

  @GET('api/web/v1/header/popup-menu-catalog')
  Future<CatalogMenu> getCatalogs();
}


// home/special-products?type=hit_products
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/product_all_category/products_all_category.dart';

part 'api_product_all.g.dart';

@RestApi()
abstract class ApiProductAll {
  factory ApiProductAll(Dio dio, {String baseUrl}) = _ApiProductAll;

  // kichki kategoriyalar
  @GET("api/common/v1/search/filters")
  Future<ProductAllCategory> getCategoryProductSimple({
    @Query("category_all") required String slug,
    @Query("sort") String sort = "-popular",
    @Query("page") int page = 1,
  });
}

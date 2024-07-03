// home/special-products?type=hit_products
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/products_all_category.dart';

part 'api_product_all.g.dart';

@RestApi()
abstract class ApiProductAll {
  factory ApiProductAll(Dio dio, {String baseUrl}) = _ApiProductAll;

  @GET("common/v1/search/filters")
  Future<ProductAllCategory> getCategoryProductSimple({
    @Query("category_all") required String category,
    @Query("sort") String? sort,
    @Query("page") String? number,
  });
}

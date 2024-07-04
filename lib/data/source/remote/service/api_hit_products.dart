// home/special-products?type=hit_products
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/hit_products/xit_products.dart';

part 'api_hit_products.g.dart';

@RestApi()
abstract class ApiHitProducts {
  factory ApiHitProducts(Dio dio, {String baseUrl}) = _ApiHitProducts;

  @GET('api/web/v1/home/special-products?type=hit_products')
  Future<XitProducts> getHitProducts();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/product_detail/product_detail_response.dart';

part 'api_product_details.g.dart';

@RestApi()
abstract class ApiProductDetails {
  factory ApiProductDetails(Dio dio, {String baseUrl}) = _ApiProductDetails;

  @GET('api/web/v1/product/detail')
  Future<ProductDetailResponse> getProductDetail({
    @Query("id") required String id,
  });
}

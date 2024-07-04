// home/special-products?type=hit_products
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/chips/chips_response.dart';

part 'api_chips.g.dart';

@RestApi()
abstract class ApiChips {
  factory ApiChips(Dio dio, {String baseUrl}) = _ApiChips;

  @GET('api/web/v1/category/chips')
  Future<ChipsResponse> getChips({
    @Query("slug") required String slug,
  });
}

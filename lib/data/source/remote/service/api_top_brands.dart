/*

*/
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/slider_response.dart';

import '../response/special_categories.dart';
import '../response/top_brands.dart';

part 'api_top_brands.g.dart';

@RestApi()
abstract class ApiTopBrands {
  factory ApiTopBrands(Dio dio, {String baseUrl}) = _ApiTopBrands;

  @GET('common/v1/search/filters')
  Future<TopBrands> getSelectedCategory({
    @Query('category_all') required String slug,
    @Query('sort') String sort = '-popular',
    @Query('page') int page = 1,
  });
}

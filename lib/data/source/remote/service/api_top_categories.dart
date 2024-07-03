import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/top_categories_response.dart';

part 'api_top_categories.g.dart';

@RestApi()
abstract class ApiTopCategories {
  factory ApiTopCategories(Dio dio, {String baseUrl}) = _ApiTopCategories;

  @GET('header/top-categories/')
  Future<TopCategoriesResponse> getTopCategories();
}

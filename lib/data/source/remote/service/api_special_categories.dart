import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/special_categories/special_categories.dart';

part 'api_special_categories.g.dart';

@RestApi()
abstract class ApiSpecialCategories {
  factory ApiSpecialCategories(Dio dio, {String baseUrl}) = _ApiSpecialCategories;

  @GET('api/web/v1/home/special-categories/')
  Future<SpecialCategories> getSpecialCategories();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/slider_response.dart';

import '../response/special_categories.dart';

part 'api_special_categories.g.dart';

@RestApi()
abstract class ApiSpecialCategories {
  factory ApiSpecialCategories(Dio dio, {String baseUrl}) = _ApiSpecialCategories;

  @GET('home/special-categories/')
  Future<SpecialCategories> getSpecialCategories();
}

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../response/slider/slider_response.dart';

part 'api_sliders.g.dart';

@RestApi()
abstract class ApiSliders {
  factory ApiSliders(Dio dio, {String baseUrl}) = _ApiSliders;

  @GET('api/web/v1/content/sliders/')
  Future<SliderResponse> getSliders();
}


import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/slider_response.dart';

part 'api_sliders.g.dart';

@RestApi()
abstract class ApiSliders {
  factory ApiSliders(Dio dio, {String baseUrl}) = _ApiSliders;

  @GET('content/sliders/')
  Future<SliderResponse> getSliders();
}


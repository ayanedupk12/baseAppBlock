import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/requestBody/sign_in_body_model.dart';
import '../model/response/main_response_model.dart';

part 'network_api_client.g.dart';

@RestApi(baseUrl: "https://development.qthemusic.app/api/")
abstract class NetworkApiClient {
  factory NetworkApiClient(Dio dio, {String baseUrl}) = _NetworkApiClient;

  @POST("v1/user/signIn")
  Future<MainResponseModel> signIn(@Body() SignInBodyModel signInBodyModel);
}

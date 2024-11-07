import 'package:dio/dio.dart';
import 'package:avenueBellevue/dataProvider/network/network_api_client.dart';
import 'package:avenueBellevue/repository/data_manager_imp.dart';
import '../dataProvider/model/requestBody/sign_in_body_model.dart';
import '../dataProvider/model/response/main_response_model.dart';
import '../dataProvider/model/response/response_model.dart';
import '../dataProvider/network/mock_api_client.dart';
import '../helper/constant/strings_resource.dart';
import '../helper/util/utils.dart';

class DataManager implements DataManagerImp {
  late final MockApiClient _mockApiClient;
  late final NetworkApiClient _networkApiClient;

  DataManager(
      {required MockApiClient mockApiClient,
      required NetworkApiClient networkApiClient}) {
    _mockApiClient = mockApiClient;
    _networkApiClient = networkApiClient;
  }

  @override
  Future<MainResponseModel> mockEndpoint() {
    return _mockApiClient
        .mockApiCall("sign_in")
        .then((successResponse) => successResponse)
        .catchError((e) {
      switch (e.runtimeType) {
        case DioError:
          return errorHandling(e);
        default:
          Utils.console("Exception: $e");
      }
    });
  }

  @override
  Future<MainResponseModel> signIn(SignInBodyModel signInBodyModel) {
    return _networkApiClient
        .signIn(signInBodyModel)
        .then((successResponse) => successResponse)
        .catchError((e) {
      switch (e.runtimeType) {
        case DioError:
          return errorHandling(e);
        default:
          Utils.console("Exception: $e");
      }
    });
  }

  MainResponseModel errorHandling(DioError e) {
    final errorResponse = e.response;
    if (errorResponse?.data != null) {
      var jsonResponse = MainResponseModel.fromJson(errorResponse?.data);
      return MainResponseModel(
          response: ResponseModel(
              message: jsonResponse.response.message,
              status: jsonResponse.response.status,
              errorCode: errorResponse?.statusCode));
    } else {
      return MainResponseModel(
          response: ResponseModel(
              message: StringsResource.STR_STH_WRONG,
              status: false,
              errorCode: errorResponse?.statusCode));
    }
  }
}

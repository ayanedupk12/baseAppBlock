import 'dart:convert';

import 'package:flutter/services.dart';

import '../../helper/util/utils.dart';
import '../model/response/main_response_model.dart';

class MockApiClient {
  MockApiClient();

  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  Future<MainResponseModel> mockApiCall(String file) async {
    final resourcePath = _jsonDir + file + _jsonExtension;
    Utils.console(resourcePath);
    String data = await rootBundle.loadString(resourcePath);
    final jsonResult = json.decode(data);
    /**
     * For throwing exception uncomment below code.
     */
    // throw DioError(
    //   requestOptions: RequestOptions(path: ""),
    //   response: Response(
    //     requestOptions: RequestOptions(path: ""),
    //     statusCode: 406,
    //     data: {
    //       "response": {"status": false, "message": "Email Or password Wrong"}
    //     },
    //   ),
    // );
    return MainResponseModel.fromJson(jsonResult);
  }

  Future<dynamic> mockApiCallEmptyResponse() async {
    /**
     * For throwing exception uncomment below code.
     */
    // throw DioError(
    //   requestOptions: RequestOptions(path: ""),
    //   response: Response(
    //     requestOptions: RequestOptions(path: ""),
    //     statusCode: 401,
    //     data: {
    //       "response": {"status": false, "message": "Email Or password Wrong"}
    //     },
    //   ),
    // );
    return "";
  }
}

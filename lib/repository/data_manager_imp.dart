import '../dataProvider/model/requestBody/sign_in_body_model.dart';
import '../dataProvider/model/response/main_response_model.dart';

abstract class DataManagerImp {
  Future<MainResponseModel> mockEndpoint();

  Future<MainResponseModel> signIn(SignInBodyModel signInBodyModel);
}

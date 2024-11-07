import 'package:avenueBellevue/repository/data_manager.dart';
import 'package:hive/hive.dart';

import '../../businessLogic/api_request_status.dart';
import '../../main.dart';
import '../../presentation/router/routes.dart';
import '../constant/constants_resource.dart';

class HiveBox {
  setValue({required String key, required dynamic value}) async {
    var box = Hive.box(ConstantsResource.HIVE_BOX);
    await box.put(key, value);
  }

  getValue({required String key, dynamic defaultValue}) {
    var box = Hive.box(ConstantsResource.HIVE_BOX);
    return box.get(key, defaultValue: defaultValue);
  }

  deleteValue({required String key}) async {
    var box = Hive.box(ConstantsResource.HIVE_BOX);
    await box.delete(key);
  }

  clearAppSession(
      {ApiRequestStatusFailure? apiRequestStatusFailure,
      DataManager? dataManager}) async {
    var box = Hive.box(ConstantsResource.HIVE_BOX);
    await box.clear();
    globalNavigator.currentState?.pushNamedAndRemoveUntil(
      SIGN_IN_SCREEN,
      (route) => false,
      arguments: apiRequestStatusFailure,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constant/colors_resource.dart';

import '../constant/constants_resource.dart';

extension ContextExtensions on BuildContext {
  void showSuccessSnackBar(String msg) {
    final snackBar = SnackBar(
        duration: const Duration(seconds: ConstantsResource.SNACKBAR_DURATION),
        content: Text(msg),
        backgroundColor: ColorsResource.SUCCESS_COLOR);
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showErrorSnackBar(String msg) {
    final snackBar = SnackBar(
        duration: const Duration(seconds: ConstantsResource.SNACKBAR_DURATION),
        content: Text(msg),
        backgroundColor: ColorsResource.ERROR_COLOR);
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceUtils {
  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  Future getDeviceId() async {
    if (Platform.isAndroid) {
      return await DeviceInfoPlugin().androidInfo.then((value) => value.id);
    } else if (Platform.isIOS) {
      return await DeviceInfoPlugin()
          .iosInfo
          .then((value) => value.identifierForVendor);
    }
  }

  SystemUiOverlayStyle getSystemOverlayStyle(Color color) {
    return SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: color,
      systemStatusBarContrastEnforced: true,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: color,
    );
  }

  static double getScaledSize(BuildContext context, double scale) =>
      scale *
      (MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height);

  static double getScaledWidth(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.width;

  static double getScaledHeight(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.height;
}

import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../constant/strings_resource.dart';

class Utils {
  static void console(String message) {
    if (kDebugMode) {
      log(message);
    }
  }

  static String twoDigits(int value) =>
      value.toString().padLeft(2, StringsResource.STR_ZERO);

  static double getFileSizeString({required int bytes, int decimals = 0}) {
    if (bytes <= 0) return 0;
    final kb = bytes / 1024;
    final mb = kb / 1024;
    return mb;
  }
}

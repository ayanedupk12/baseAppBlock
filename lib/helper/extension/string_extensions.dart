import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:avenueBellevue/helper/constant/strings_resource.dart';
import 'package:intl/intl.dart';

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  dynamic get validateEmail {
    if (length == 0) {
      return StringsResource.EMAIL_REQUIRED;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return StringsResource.STR_INVALID_EMAIL;
    } else {
      return null;
    }
  }

  dynamic get validatePassword {
    if (length == 0) {
      return StringsResource.STR_ENTER_PASSWORD;
    } else if (!isValidPassword(this)) {
      return StringsResource.STR_INVALID_PASSWORD;
    }
    return null;
  }

  dynamic get validateName {
    if (length == 0) {
      return StringsResource.STR_EMPTY_NAME;
    } else {
      return null;
    }
  }

  dynamic validateConfirmPassword(String password) {
    if (length == 0) {
      return StringsResource.STR_ENTER_PASSWORD;
    } else if (!isValidPassword(this)) {
      return StringsResource.STR_INVALID_PASSWORD;
    } else if (this != password) {
      return StringsResource.STR_PASSWORD_MISMATCH;
    } else {
      return null;
    }
  }

  bool isValidPassword(String password) {
    return RegExp(("^(?=.*[0-9])" +
            "(?=.*[a-z])(?=.*[A-Z])" +
            "(?=.*[@_{}*!;\\[\\]:?<>'\"\\\\|()#%^&+=])" +
            "(?=\\S+).{8,36}"))
        .hasMatch(password);
  }

  String formatDate(String inFormat, String outFormat) {
    DateTime parseDate = DateFormat(inFormat).parse(this);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat(outFormat);
    return outputFormat.format(inputDate);
  }

  String convertStringToBase64() {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(this);
  }

  Color hexToColor() {
    return Color(int.parse(replaceFirst('#', '0xFF')));
  }

  String get removeSpaces {
    List<String> list = split(' ');
    return list.join();
  }
}

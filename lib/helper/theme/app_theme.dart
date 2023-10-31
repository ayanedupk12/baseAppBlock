import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/theme/text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors_resource.dart';
import '../constant/dimensions_resource.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: GoogleFonts.manrope().fontFamily,
    brightness: Brightness.light,
    cardColor: ColorsResource.COLOR_CARD_BACKGROUND,
    primaryColorDark: ColorsResource.PRIMARY_COLOR_DARK,
    scaffoldBackgroundColor: ColorsResource.WHITE,
    primaryColor: ColorsResource.PRIMARY_COLOR,
    colorScheme: ThemeData()
        .colorScheme
        .copyWith(primary: ColorsResource.COLOR_CARD_BACKGROUND),
    appBarTheme: const AppBarTheme(
        backgroundColor: ColorsResource.WHITE,
        titleTextStyle: TextStyle(
            fontSize: DimensionsResource.D_20,
            fontWeight: FontWeight.normal,
            color: ColorsResource.COLOR_BLACK)),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorsResource.PRIMARY_COLOR,
      selectionColor: ColorsResource.TEXT_FIELD_BORDER_COLOR,
      selectionHandleColor: ColorsResource.PRIMARY_COLOR,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DimensionsResource.RADIUS_SMALL),
          borderSide:
              const BorderSide(color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
    ),
    textTheme: textTheme,
  );
}

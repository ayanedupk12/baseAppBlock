import 'package:flutter/material.dart';
import 'package:flutter_base_project/main.dart';
import 'package:flutter_base_project/presentation/widgets/text_view_widget.dart';

import '../../presentation/widgets/btn_widget.dart';
import '../constant/colors_resource.dart';
import '../constant/dimensions_resource.dart';
import '../constant/strings_resource.dart';
import '../flavors/flavor_config.dart';

class DialogUtils {
  static Future<bool?> showNoInternetDialog(
      {required BuildContext context,
      Function()? onRetry,
      bool hideRetry = false}) async {
    return await showDialog<bool>(
      barrierDismissible: false,
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: DimensionsResource.D_15,
              vertical: DimensionsResource.D_20),
          backgroundColor: ColorsResource.WHITE,
          titlePadding: const EdgeInsets.only(
              left: DimensionsResource.D_20,
              right: DimensionsResource.D_20,
              top: DimensionsResource.D_20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DimensionsResource.D_12)),
          title: Center(
            child: Text(
              StringsResource.STR_NO_INTERNET,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: ColorsResource.PRIMARY_COLOR),
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  StringsResource.STR_CHECK_YOUR_INTERNET,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: ColorsResource.COLOR_BLACK,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: DimensionsResource.D_25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ButtonWidget(
                      btnText: StringsResource.STR_CLOSE,
                      buttonColor: Colors.transparent,
                      textColor: ColorsResource.PRIMARY_COLOR,
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                    )),
                    if (!hideRetry)
                      const SizedBox(
                        width: DimensionsResource.D_15,
                      ),
                    if (!hideRetry)
                      Expanded(
                          child: ButtonWidget(
                        btnText: StringsResource.STR_RETRY,
                        buttonColor: ColorsResource.PRIMARY_COLOR,
                        borderColor: ColorsResource.PRIMARY_COLOR,
                        onTap: () {
                          Navigator.pop(globalNavigator.currentContext!);
                          onRetry!();
                        },
                      )),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> showAlertDialog(
      {required BuildContext context,
      required String title,
      required String message}) async {
    return await showDialog<bool>(
      barrierDismissible: false,
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: DimensionsResource.D_15,
              vertical: DimensionsResource.D_20),
          backgroundColor: ColorsResource.WHITE,
          titlePadding: const EdgeInsets.only(
              left: DimensionsResource.D_20,
              right: DimensionsResource.D_20,
              top: DimensionsResource.D_20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DimensionsResource.D_12)),
          title: Center(
            child: Text(
              FlavorConfig.instance?.flavor == Flavor.staging
                  ? title
                  : StringsResource.STR_ALERT,
              textScaleFactor: DimensionsResource.D_1,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: ColorsResource.PRIMARY_COLOR),
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextViewWidget(
                    textScaleFactor: true,
                    text: message,
                    textStyle: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: ColorsResource.COLOR_BLACK)),
                const SizedBox(
                  height: DimensionsResource.D_25,
                ),
                Expanded(
                    child: ButtonWidget(
                  textScaleFactor: true,
                  btnText: StringsResource.STR_CLOSE,
                  buttonColor: Colors.transparent,
                  textColor: ColorsResource.PRIMARY_COLOR,
                  onTap: () {
                    Navigator.of(context).pop(true);
                  },
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> showDialogOKCallBack(
      {required BuildContext context,
      required String title,
      required String message,
      String? action,
      bool error = false,
      String? btnText}) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: DimensionsResource.D_15,
              vertical: DimensionsResource.D_20),
          backgroundColor: ColorsResource.WHITE,
          titlePadding: const EdgeInsets.only(
              left: DimensionsResource.D_20,
              right: DimensionsResource.D_20,
              top: DimensionsResource.D_20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DimensionsResource.D_12)),
          title: TextViewWidget(
            textScaleFactor: true,
            align: TextAlign.center,
            text: title,
            textStyle: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: ColorsResource.PRIMARY_COLOR),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextViewWidget(
                    textScaleFactor: true,
                    text: message,
                    textStyle: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: ColorsResource.PRIMARY_COLOR)),
                const SizedBox(
                  height: DimensionsResource.D_10,
                ),
                action != null
                    ? TextViewWidget(
                        textScaleFactor: true,
                        align: TextAlign.start,
                        text: action,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: ColorsResource.PRIMARY_COLOR),
                      )
                    : Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ButtonWidget(
                      textScaleFactor: true,
                      btnText: StringsResource.STR_CLOSE,
                      buttonColor: Colors.transparent,
                      textColor: ColorsResource.PRIMARY_COLOR,
                      onTap: () {
                        Navigator.of(context).pop(false);
                      },
                    )),
                    if (btnText != null)
                      const SizedBox(
                        width: DimensionsResource.D_15,
                      ),
                    if (btnText != null)
                      Expanded(
                          child: ButtonWidget(
                        textScaleFactor: true,
                        btnText: btnText,
                        buttonColor: ColorsResource.PRIMARY_COLOR,
                        borderColor: ColorsResource.PRIMARY_COLOR,
                        onTap: () {
                          Navigator.of(context).pop(true);
                        },
                      )),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

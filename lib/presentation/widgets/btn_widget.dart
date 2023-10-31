import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constant/dimensions_resource.dart';
import 'package:flutter_base_project/presentation/widgets/text_view_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../helper/constant/colors_resource.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      this.btnText,
      this.onTap,
      this.loading = false,
      this.buttonColor,
      this.borderColor,
      this.textColor,
      this.height,
      this.fontWeight,
      this.fontSize,
      this.width,
      this.textStyle,
      this.radius,
      this.textScaleFactor = false,
      this.leadingIcon,
      this.trailingIcon,
      this.gradient,
      this.leadingIconAlignment,
      this.isDisabled = false})
      : super(key: key);
  final String? btnText;
  final Function()? onTap;
  final Color? buttonColor;
  final double? radius;
  final double? height;
  final Color? borderColor;
  final double? width;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool textScaleFactor;
  final bool loading;
  final TextStyle? textStyle;
  final String? leadingIcon;
  final String? trailingIcon;
  final Gradient? gradient;
  final AlignmentGeometry? leadingIconAlignment;
  final bool? isDisabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: isDisabled == false ? onTap : null,
        child: Container(
          height: height ?? DimensionsResource.D_48,
          width: width ?? MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor ?? ColorsResource.PRIMARY_COLOR,
              gradient: gradient,
              borderRadius:
                  BorderRadius.circular(radius ?? DimensionsResource.D_8),
              border: Border.all(
                  color: borderColor ?? ColorsResource.PRIMARY_COLOR)),
          child: trailingIcon == null
              ? Stack(
                  children: [
                    Align(
                      alignment: leadingIconAlignment == null
                          ? Alignment.centerLeft
                          : leadingIconAlignment!,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: leadingIconAlignment == null
                                  ? DimensionsResource.D_16
                                  : 0),
                          child: SvgPicture.asset(leadingIcon ?? "")),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (loading)
                            const SizedBox(
                                height: DimensionsResource.D_20,
                                width: DimensionsResource.D_20,
                                child: CircularProgressIndicator(
                                    color: ColorsResource.WHITE,
                                    strokeWidth: DimensionsResource.D_2)),
                          if (loading)
                            const SizedBox(
                              width: DimensionsResource.D_10,
                            ),
                          TextViewWidget(
                            text: btnText ?? "",
                            isEllipsis: true,
                            textScaleFactor: textScaleFactor,
                            textStyle: textStyle ??
                                Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color:
                                            textColor ?? ColorsResource.WHITE,
                                        fontSize: fontSize,
                                        fontWeight:
                                            fontWeight ?? FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: DimensionsResource.D_16,
                      ),
                      SvgPicture.asset(leadingIcon ?? ""),
                      const SizedBox(
                        width: DimensionsResource.D_10,
                      ),
                      TextViewWidget(
                        text: btnText ?? "",
                        isEllipsis: true,
                        textScaleFactor: textScaleFactor,
                        textStyle: textStyle ??
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: textColor ?? ColorsResource.WHITE,
                                fontSize: fontSize,
                                fontWeight: fontWeight ?? FontWeight.w600),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: DimensionsResource.D_16),
                        child: SvgPicture.asset(trailingIcon ?? ""),
                      )
                    ],
                  ),
                ),
        ));
  }
}

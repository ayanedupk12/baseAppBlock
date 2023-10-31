import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constant/colors_resource.dart';
import 'package:flutter_base_project/presentation/widgets/text_view_widget.dart';
import 'package:flutter_svg/svg.dart';

import '../../helper/constant/dimensions_resource.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    String? title,
    this.onTap,
    this.hideLeading = false,
    List<Widget>? actions,
    this.bgColor,
    this.boxShadow,
    this.imageWidget,
  })  : _title = title ?? "",
        _actions = actions,
        super(key: key);

  final String _title;
  final List<Widget>? _actions;
  final Widget? imageWidget;
  final Color? bgColor;
  final bool hideLeading;
  final BoxShadow? boxShadow;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(boxShadow: boxShadow != null ? [boxShadow!] : null),
      child: AppBar(
        backgroundColor: bgColor ?? ColorsResource.WHITE,
        elevation: 0,
        title: imageWidget ??
            TextViewWidget(
              text: _title,
              textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ColorsResource.PRIMARY_COLOR,
                  fontWeight: FontWeight.w500),
            ),
        centerTitle: true,
        leading: hideLeading
            ? null
            : IconButton(
                icon: SvgPicture.asset(""),
                onPressed: onTap ??
                    () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Navigator.of(context).pop();
                    },
              ),
        actions: _actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DimensionsResource.D_60);
}

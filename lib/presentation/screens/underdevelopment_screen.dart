import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constant/colors_resource.dart';
import 'package:flutter_base_project/helper/constant/dimensions_resource.dart';

import '../../helper/constant/strings_resource.dart';
import '../widgets/app_bar_widget.dart';

class UnderdevelopmentScreen extends StatelessWidget {
  const UnderdevelopmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsResource.WHITE,
      appBar: AppBarWidget(
        title: StringsResource.STR_UNDER_DEVELOPMENT,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(DimensionsResource.D_8),
          child: Center(
              child: Text(
            StringsResource.STR_UNDER_DEVELOPMENT_SCREEN,
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../helper/constant/dimensions_resource.dart';

class CustomProgressIndicatorWidget extends StatelessWidget {
  const CustomProgressIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: DimensionsResource.D_20),
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor,
        ));
  }
}

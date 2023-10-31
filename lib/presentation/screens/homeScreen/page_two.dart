import 'package:flutter/material.dart';

import '../../../helper/flavors/flavor_config.dart';
import '../../widgets/text_view_widget.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextViewWidget(
              text: "PAGE TWO",
              textStyle: Theme.of(context).textTheme.headlineLarge),
          TextViewWidget(
              text: FlavorConfig.instance?.values.apiBaseUrl ?? "",
              textStyle: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}

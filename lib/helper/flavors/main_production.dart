import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/constant/flavors_resource.dart';
import 'package:flutter_base_project/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../presentation/router/app_router.dart';
import 'flavor_config.dart';

void productionMain(PackageInfo packageInfo) {
  FlavorConfig(
      flavor: Flavor.production,
      values: FlavorValues(
          apiBaseUrl: FlavorsResource.PRODUCTION_BASE_URL,
          apiKey: FlavorsResource.PRODUCTION_API_KEY));

  mainCommon();
  AppRouter appRouter = AppRouter(packageInfo: packageInfo);
  return runApp(MyApp(appRouter: appRouter));
}

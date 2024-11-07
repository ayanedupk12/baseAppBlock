import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:avenueBellevue/helper/constant/flavors_resource.dart';
import 'package:avenueBellevue/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../presentation/router/app_router.dart';
import 'flavor_config.dart';

void developmentMain(PackageInfo packageInfo)async {
  FlavorConfig(
      flavor: Flavor.development,
      values: FlavorValues(
          apiBaseUrl: FlavorsResource.DEVELOPMENT_BASE_URL,
          apiKey: FlavorsResource.DEVELOPMENT_API_KEY));
  mainCommon();
  AppRouter appRouter = AppRouter(packageInfo: packageInfo);
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  return runApp(MyApp(appRouter: appRouter));
}

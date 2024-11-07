import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:avenueBellevue/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../presentation/router/app_router.dart';
import '../constant/flavors_resource.dart';
import 'flavor_config.dart';

void stagingMain(PackageInfo packageInfo)async {
  FlavorConfig(
      flavor: Flavor.staging,
      values: FlavorValues(
          apiBaseUrl: FlavorsResource.STAGING_BASE_URL,
          apiKey: FlavorsResource.STAGING_API_KEY));

  mainCommon();
  AppRouter appRouter = AppRouter(packageInfo: packageInfo);
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  return runApp(MyApp(appRouter: appRouter));
}

import 'dart:io';
import 'package:avenueBellevue/businessLogic/app_bloc_observer.dart';
import 'package:avenueBellevue/helper/constant/dimensions_resource.dart';
import 'package:avenueBellevue/helper/constant/flavors_resource.dart';
import 'package:avenueBellevue/helper/util/svg_utils.dart';
import 'package:avenueBellevue/helper/util/utils.dart';
import 'package:avenueBellevue/presentation/router/app_router.dart';
import 'package:avenueBellevue/presentation/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:upgrader/upgrader.dart';
import 'helper/constant/constants_resource.dart';
import 'helper/flavors/main_acceptance.dart';
import 'helper/flavors/main_dev.dart';
import 'helper/flavors/main_production.dart';
import 'helper/flavors/main_staging.dart';
import 'helper/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String packageName = packageInfo.packageName;
  Utils.console("Package Name => $packageName");
  Bloc.observer = AppBlocObserver();
  SvgUtils.preCacheSVGs();
  if (packageName == FlavorsResource.STAGING_PACKAGE_NAME) {
    return stagingMain(packageInfo);
  } else if (packageName == FlavorsResource.ACCEPTANCE_PACKAGE_NAME) {
    return acceptanceMain(packageInfo);
  } else if (packageName == FlavorsResource.DEVELOPMENT_PACKAGE_NAME) {
    return developmentMain(packageInfo);
  } else {
    return productionMain(packageInfo);
  }
}

void mainCommon() async {
  await Future.delayed(const Duration(seconds: ConstantsResource.SPLASH_DELAY));
  FlutterNativeSplash.remove();
}

final GlobalKey<NavigatorState> globalNavigator = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      builder: (context, child) {
        return UpgradeAlert(
          upgrader: Upgrader(
              debugDisplayAlways: true,
              showIgnore: false,
              showLater: false,
              dialogStyle: Platform.isIOS
                  ? UpgradeDialogStyle.cupertino
                  : UpgradeDialogStyle.material),
          child: MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaleFactor: DimensionsResource.D_1),
            child: child ?? Container(),
          ),
        );
      },
      initialRoute: HOME_SCREEN_ROUTE,
      debugShowCheckedModeBanner: false,
      navigatorKey: globalNavigator,
      theme: AppTheme.themeData,
      onGenerateRoute: widget.appRouter.generateRoute,
    );
  }

  @override
  void dispose() {
    widget.appRouter.dispose();
    super.dispose();
  }

}

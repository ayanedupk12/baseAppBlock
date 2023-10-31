import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/businessLogic/cubit/counterCubit/counter_cubit.dart';
import 'package:flutter_base_project/businessLogic/cubit/navigationBarCubit/navigation_bar_cubit.dart';
import 'package:flutter_base_project/dataProvider/network/mock_api_client.dart';
import 'package:flutter_base_project/helper/constant/constants_resource.dart';
import 'package:flutter_base_project/presentation/router/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../businessLogic/bloc/signInBloc/sign_in_bloc.dart';
import '../../dataProvider/network/network_api_client.dart';
import '../../helper/flavors/flavor_config.dart';
import '../../repository/data_manager.dart';
import '../screens/homeScreen/home_screen.dart';
import '../screens/underdevelopment_screen.dart';

class AppRouter {
  AppRouter({required this.packageInfo}) {
    dataManager = DataManager(
        mockApiClient: MockApiClient(),
        networkApiClient: NetworkApiClient(Dio(
          (BaseOptions(
              contentType: ConstantsResource.CONTENT_TYPE,
              headers: {
                "Accept": ConstantsResource.CONTENT_TYPE,
                "api-key": FlavorConfig.instance?.values.apiKey,
              },
              baseUrl: FlavorConfig.instance?.values.apiBaseUrl ?? "")),
        )));
  }

  final PackageInfo packageInfo;
  late DataManager dataManager;

  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? "";
    switch (route) {
      case HOME_SCREEN_ROUTE:
        {
          return MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => NavigationBarCubit(),
                      ),
                      BlocProvider(
                        create: (context) => CounterCubit(),
                      ),
                    ],
                    child: const MyHomePage(),
                  ));
        }
      case UNDERDEVELOPMENT_SCREEN_ROUTE:
        return MaterialPageRoute(
            builder: (_) => const UnderdevelopmentScreen());
      case SIGN_IN_SCREEN:
        {
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => SignInBloc(dataManager: dataManager),
                    child: const UnderdevelopmentScreen(),
                  ));
        }
      default:
        return null;
    }
  }

  void dispose() {}
}

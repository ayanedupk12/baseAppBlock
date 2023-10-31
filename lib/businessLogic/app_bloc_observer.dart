import 'package:bloc/bloc.dart';

import '../helper/util/utils.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Utils.console('${bloc.runtimeType} $transition');
  }
}

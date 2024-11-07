import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:avenueBellevue/helper/enum/nav_bar_items.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(const NavigationBarState(NavbarItems.HOME, 0));

  void getNavBarItem(NavbarItems navbarItem) {
    switch (navbarItem) {
      case NavbarItems.HOME:
        emit(const NavigationBarState(NavbarItems.HOME, 0));
        break;
      case NavbarItems.SETTINGS:
        emit(const NavigationBarState(NavbarItems.SETTINGS, 1));
        break;
      case NavbarItems.PROFILE:
        emit(const NavigationBarState(NavbarItems.PROFILE, 2));
        break;
    }
  }
}

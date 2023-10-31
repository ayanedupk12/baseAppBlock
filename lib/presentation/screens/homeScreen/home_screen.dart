import 'package:flutter/material.dart';
import 'package:flutter_base_project/businessLogic/cubit/navigationBarCubit/navigation_bar_cubit.dart';
import 'package:flutter_base_project/helper/enum/nav_bar_items.dart';
import 'package:flutter_base_project/presentation/screens/homeScreen/page_one.dart';
import 'package:flutter_base_project/presentation/screens/homeScreen/page_two.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter base project"),
      ),
      bottomNavigationBar: BlocBuilder<NavigationBarCubit, NavigationBarState>(
          builder: (context, state) {
        return bottomNavBar(state);
      }),
      body: BlocBuilder<NavigationBarCubit, NavigationBarState>(
          builder: (context, state) {
        if (state.navbarItem == NavbarItems.HOME) {
          return const PageOne();
        } else if (state.navbarItem == NavbarItems.SETTINGS) {
          return const PageTwo();
        } else if (state.navbarItem == NavbarItems.PROFILE) {
          return const PageOne();
        }
        return Container();
      }),
    );
  }

  BottomNavigationBar bottomNavBar(NavigationBarState state) {
    return BottomNavigationBar(
      currentIndex: state.index,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          BlocProvider.of<NavigationBarCubit>(context)
              .getNavBarItem(NavbarItems.HOME);
        } else if (index == 1) {
          BlocProvider.of<NavigationBarCubit>(context)
              .getNavBarItem(NavbarItems.SETTINGS);
        } else if (index == 2) {
          BlocProvider.of<NavigationBarCubit>(context)
              .getNavBarItem(NavbarItems.PROFILE);
        }
      },
    );
  }
}

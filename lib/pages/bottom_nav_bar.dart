import 'package:budget_app/pages/profil.page.dart';
import 'package:budget_app/utilities/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      Container(),
      Container(),
      Container(),
      const ProfilPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    dynamic navBarColor = CustomThemes.isDarkMode(context) == true
        ? kDarkGreenNavIconC
        : kGreenNavC;
    return [
      PersistentBottomNavBarItem(
        inactiveColorPrimary: navBarColor,
        activeColorPrimary: navBarColor,
        icon: const Icon(Icons.home),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: navBarColor,
        activeColorPrimary: navBarColor,
        icon: const Icon(Icons.account_balance_wallet),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: navBarColor,
        activeColorPrimary: navBarColor,
        icon: const Icon(Icons.article),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: navBarColor,
        activeColorPrimary: navBarColor,
        icon: const Icon(Icons.person),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: navBarItem(),
      controller: controller,
      navBarHeight: 60,
      decoration: NavBarDecoration(
          colorBehindNavBar: CustomThemes.isDarkMode(context) == true
              ? kDarkGreenBackC
              : kGreenDarkC,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      padding: const NavBarPadding.all(0),
      backgroundColor: Theme.of(context).primaryColor,
      navBarStyle: NavBarStyle.style3,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation:
          const ScreenTransitionAnimation(curve: Curves.ease),
    );
  }
}

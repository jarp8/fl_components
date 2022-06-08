import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    // MenuOption(
    //     route: 'home',
    //     nombre: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        nombre: 'listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        nombre: 'listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        nombre: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.align_vertical_center_rounded),
    MenuOption(
        route: 'card',
        nombre: 'Cartas',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        nombre: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.superscript),
    MenuOption(
        route: 'animated',
        nombre: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (_) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (_) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (_) => const HomeScreen(),
  //   'listview1': (_) => const Listview1Screen(),
  //   'listview2': (_) => const Listview2Screen(),
  //   'alert': (_) => const AlertScreen(),
  //   'card': (_) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

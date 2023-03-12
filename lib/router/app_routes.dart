import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    // route: 'home',
    // name: 'Home',
    // screen: const HomeScreen(),
    // icon: Icons.home,
    // ),
    MenuOptions(
      route: 'listView1',
      name: 'listView1 ',
      screen: const ListVew1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOptions(
      route: 'listView2',
      name: 'listView2 ',
      screen: const ListVew2Screen(),
      icon: Icons.list_outlined,
    ),
    MenuOptions(
      route: 'alert',
      name: 'alert ',
      screen: const AlertScreen(),
      icon: Icons.add_alert_rounded,
    ),
    MenuOptions(
      route: 'card',
      name: 'card ',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOptions(
      route: 'avatar',
      name: 'Avatar ',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle,
    ),
    MenuOptions(
      route: 'animated',
      name: 'Animated ',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_outlined,
    ),
    MenuOptions(
      route: 'inputs',
      name: 'Text Inputs ',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOptions(
      route: 'slider',
      name: 'Slider && checks',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_outlined,
    ),
    MenuOptions(
      route: 'listviewbuilder',
      name: 'InfiniteScroll & pull to refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listView1': (context) => const ListVew1Screen(),
  //   'listView2': (context) => const ListVew2Screen(),
  //   'alert': (context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) =>
          const Scaffold(body: Center(child: Text("404 not found"))),
    );
  }
}

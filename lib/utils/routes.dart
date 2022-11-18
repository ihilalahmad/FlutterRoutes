import 'package:flutter/material.dart';
import 'package:flutter_routing_nav/screens/screen_1.dart';
import 'package:flutter_routing_nav/screens/screen_2.dart';
import 'package:flutter_routing_nav/screens/screen_3.dart';
import 'package:flutter_routing_nav/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.screenOne:
        return MaterialPageRoute(builder: (context) => ScreenOne());

      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));

      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('No route found')),
          );
        });
    }
  }
}

import 'package:flutter/material.dart';
import 'package:routes_2/home_screen.dart';
import 'package:routes_2/screen_three.dart';
import 'package:routes_2/screen_two.dart';
import 'package:routes_2/utils/routes_name.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){

      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo(data: settings.arguments as Map,));
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());

      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No Route defined')),
          );
        });
    }
  }
}
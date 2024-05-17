
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsup_clone/screens/home/home_screen.dart';
import 'package:whatsup_clone/screens/welcome/welcome_screen.dart';

import 'auth/phone_number_screen.dart';

class Routes {


  static Route generateRoute(RouteSettings  settings) {

    switch(settings.name){
      case welcome:
        return MaterialPageRoute(
            builder: (_) => const WelcomeScreen(key: Key(welcome),));

      case home:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(key: Key(home),));

      case phoneNumberScreen:
        return MaterialPageRoute(
            builder: (_) => const PhoneNumberScreen(key: Key(phoneNumberScreen),));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            )
        );
    }


  }

  /// declare path constants
  static const String welcome = "/";
  static const String home = "homeScreen";
  static const String phoneNumberScreen = "PhoneNumberScreen";

}
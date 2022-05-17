import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ucenje/navigation/destination.dart';
import 'package:ucenje/ui/home_screen/home_screen.dart';

import '../ui/login_screen/login_screen.dart';

class AppNavigation extends Cubit<Destination> {
  AppNavigation() : super(Destination.login);

  void navigate(Destination destination, BuildContext context) {
    switch (destination) {
      case Destination.home:
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
        break;
      default:
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen()));
        break;
    }
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ucenje/navigation/app_navigation.dart';
import 'package:ucenje/ui/home_screen/home_screen.dart';

void main() {
  runApp(const Questionnaire());
}

class Questionnaire extends StatelessWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AppNavigation(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          secondaryHeaderColor: Colors.deepPurple.shade800,
          primaryColor: MaterialColor(Colors.blue.shade700.value, const {}),
          scaffoldBackgroundColor: Colors.white,
          hintColor: Colors.grey,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        darkTheme: ThemeData(
          unselectedWidgetColor: Colors.white,
          scaffoldBackgroundColor: Colors.black,
          hintColor: Colors.grey,
          iconTheme: const IconThemeData(color: Colors.red),
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          backgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

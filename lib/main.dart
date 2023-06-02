import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'SecondScreen.dart';
import 'mainScreen.dart';

void main() {
  runApp(
    const Myhealth(),
  );
}

class Myhealth extends StatelessWidget {
  const Myhealth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const InputPage(),
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/first': (context) => const InputPage(),
          '/second': (context) => const SecondScreen(),
          '/main': (context) => const MainScreen(),
        });
  }
}

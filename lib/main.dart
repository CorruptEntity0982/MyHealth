import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'SecondScreen.dart';
import 'mainScreen.dart';
import 'profile.dart';
import 'medical_history.dart';
import 'cibil.dart';
import 'bills.dart';
import 'doctor.dart';
import 'vaccine.dart';

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
          '/profile': (context) => const Profile(),
          '/history': (context) => const History(),
          '/cibil': (context) => const Cibil(),
          '/bills': (context) => const Bills(),
          '/doctor': (context) => const Doctor(),
          '/vaccine': (context) => const Vaccine(),
        });
  }
}

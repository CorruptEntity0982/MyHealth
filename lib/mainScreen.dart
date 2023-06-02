import 'package:flutter/material.dart';
import 'package:my_health/reuseable_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text(
                  '   Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 160),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                    cardChild: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                const Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ReusableCard(
                    rang: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

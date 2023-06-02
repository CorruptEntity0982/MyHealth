import 'package:flutter/material.dart';
import 'package:my_health/meter.dart';

class Cibil extends StatefulWidget {
  const Cibil({Key? key}) : super(key: key);

  @override
  State<Cibil> createState() => _CibilState();
}

class _CibilState extends State<Cibil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFD9E2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text(
                  '  Finance',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color(0xFF702670),
                  ),
                ),
                const SizedBox(width: 160),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'images/exit.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 150),
            const Center(
              child: RadialGauge(value: 0.7),
            ),
            const SizedBox(height: 100),
            const Text(
              'Your CIBIL score',
              style: TextStyle(
                color: Color(0xFF702670),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Dummy Number',
              style: TextStyle(
                color: Color(0xFF702670),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

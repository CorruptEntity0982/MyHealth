import 'package:flutter/material.dart';
import 'reuseable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/texter.png',
                height: 300,
                width: 300,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Image.asset(
                  'images/poop.png',
                  height: 300,
                  width: 300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

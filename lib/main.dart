import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dadu'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numberOnLeft = 1;
  int numberOnRight = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numberOnLeft = Random().nextInt(6) + 1;
                  numberOnRight = Random().nextInt(6) + 1;
                });
              },
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 16.0)),
              child: Image.asset('images/dice$numberOnLeft.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numberOnLeft = Random().nextInt(6) + 1;
                  numberOnRight = Random().nextInt(6) + 1;
                });
              },
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 16.0)),
              child: Image.asset('images/dice$numberOnRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

int getRandomDiceNumber() {
  return 1 + new Random().nextInt(6);
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = getRandomDiceNumber();
  int rightDiceNumber = getRandomDiceNumber();

  void changeDiceFace() {
    leftDiceNumber = getRandomDiceNumber();
    rightDiceNumber = getRandomDiceNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

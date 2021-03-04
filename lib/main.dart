import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftVar = 1;
  int rightVar = 2;

  void changeDice() => setState(
        () {
          leftVar = Random().nextInt(6) + 1;
          rightVar = Random().nextInt(6) + 1;
        },
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: changeDice,
                    child: Image.asset('images/dice$leftVar.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: changeDice,
                    child: Image.asset('images/dice$rightVar.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

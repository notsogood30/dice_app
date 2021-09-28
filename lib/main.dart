import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Dicee',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.black),)),
          backgroundColor: Colors.white,
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
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changedicestate()
  {
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;//max is excluded
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  changedicestate();
                },
                child: Image.asset(
                    'images/dice$leftdicenumber.png')), //String interpolation
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  changedicestate();
                },
                child: Image.asset('images/dice$rightdicenumber.png')),
          ),
        ],
      ),
    );
  }
}

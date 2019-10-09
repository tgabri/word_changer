import 'package:flutter/material.dart';

import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _textOnScreen;
  String _textOne = 'Hello Stranger!';
  String _textTwo = 'Are you lost?';
  bool _isClicked = false;

  void textChanger() {
    setState(() {
      if (_isClicked) {
        _textOnScreen = _textTwo;
      } else {
        _textOnScreen = _textOne;
      }
      _isClicked = !_isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NameChanger'),
        ),
        body: TextControl(textChanger, _textOnScreen),
      ),
    );
  }
}

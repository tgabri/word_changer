import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeHandler;
  final String textOnScreen;

  TextControl(this.changeHandler, this.textOnScreen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          textOnScreen,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text('Changer'),
          onPressed: changeHandler,
        )
      ],
    );
  }
}

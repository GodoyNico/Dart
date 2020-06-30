import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _calc = 1;

  void _clicouLongPress() {
    setState(() {
      _calc = 1;
    });
    print('Clicou longpress');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter app'),
        ),
        body: GestureDetector(
          child: Center(
            child: Text(
              'Calc: $_calc',
              style: TextStyle(fontSize: 40),
            ),
          ),
          onTap: () {
            setState(() {
              _calc = (_calc * 2);
            });
            print('Clicou onTap: $_calc');
          },
          onLongPress: _clicouLongPress,
        ));
  }
}

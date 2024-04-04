// 表示
import 'dart:async';

import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  _TextFiledState createState() => _TextFiledState();
}

class _TextFiledState extends State<TextField> {
  String _expression = '1+1';
  static final controller = StreamController<String>();

  void _UpdateText(String letter) {
    setState(() {
      if (letter == '=' || letter == 'C')
        _expression = '';
      else
        _expression += letter;
    });
  }

  void initState() {
    controller.stream.listen((event) => _UpdateText(event));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              _expression,
              style: TextStyle(
                fontSize: 64.0,
              ),
            ),
          ),
        ));
  }
}

class Button extends StatelessWidget {
  final _key;

  Button(this._key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: OutlinedButton(
            child: Center(
              child: Text(
                _key,
                style: TextStyle(fontSize: 46.0),
              ),
            ),
            onPressed: () {
              _TextFiledState.controller.sink.add(_key);
            }));
  }
}

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
            child: Container(
          color: const Color(0xff87cefa),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            children: [
              '7',
              '8',
              '9',
              '÷',
              '4',
              '5',
              '6',
              '×',
              '1',
              '2',
              '3',
              '-',
              'C',
              '0',
              '=',
              '+',
            ].map((key) {
              return GridTile(
                child: Button(key),
              );
            }).toList(),
          ),
        )));
  }
}

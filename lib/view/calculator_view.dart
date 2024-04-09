import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CalculatorView extends ConsumerWidget {
  final String display = '0';

  const CalculatorView({super.key, required String display});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16.0),
                child: Text(display,
                    style:
                        const TextStyle(fontSize: 70, color: Colors.white)))),
        for (var row in _buttonRows) buildButtonRow(row),
      ],
    );
  }

  static const List<List<String>> _buttonRows = [
    ['7', '8', '9', '÷'],
    ['4', '5', '6', '×'],
    ['1', '2', '3', '-'],
    ['C', '0', '=', '+']
  ];

  Widget buildButtonRow(List<String> titles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: titles
          .map((title) => CalculatorButton(
                title: title,
                onPressed: () => _onButtonPressed(title),
              ))
          .toList(),
    );
  }
}

void _onButtonPressed(String title) {}

class CalculatorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CalculatorButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

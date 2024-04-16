import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:untitled/view_model/calculator_view_model.dart';

final calculatorViewModelProvider =
    StateNotifierProvider<CalculatorStateNotifier, CalculatorViewModel>((ref) {
  return CalculatorStateNotifier(const CalculatorViewModel(result: '0'));
});

class CalculatorStateNotifier extends StateNotifier<CalculatorViewModel> {
  CalculatorStateNotifier(super.state);

  final text = <String>[
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
    '+'
  ];

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  void onButtonPressed(String buttonText) {
    if (text.contains(buttonText)) {
      state = state.copyWith(result: buttonText);
      logger.d('NoText');
    }
  }
}

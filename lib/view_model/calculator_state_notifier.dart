import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:untitled/view_model/calculator_view_model.dart';

final calculatorViewModelProvider =
    StateNotifierProvider<CalculatorStateNotifier, CalculatorViewModel>((ref) {
  return CalculatorStateNotifier(
    const CalculatorViewModel(
        result: '0', operand: '', num1: 0, num2: 0, preserveoutput: 0),
  );
});

class CalculatorStateNotifier extends StateNotifier<CalculatorViewModel> {
  CalculatorStateNotifier(super.state);

  final inttext = <String>[
    '7',
    '8',
    '9',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    '0',
  ];
  final opetext = <String>['÷', '×', '+', '-'];

  String lastOutput = '0'; //計算結果を表示する用
  int preserveOutput = 0; //計算結果を保持する用
  int num1 = 0; //初めに入力される数字
  int num2 = 0; //2回目から入力される数字
  double divideOutput = 0.0;
  String operand = ''; //演算子

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  void opeCalculate(String operand, int num1, int num2) {
    if (operand == '+') {
      preserveOutput = num1 + num2;
      lastOutput = preserveOutput.toString();
      num1 = preserveOutput;
      num2 = 0;
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '-') {
      preserveOutput = num1 - num2;
      lastOutput = preserveOutput.toString();
      num1 = preserveOutput;
      num2 = 0;
    }
    if (operand == '×') {
      preserveOutput = num1 * num2;
      lastOutput = preserveOutput.toString();
      num1 = preserveOutput;
      num2 = 0;
    }
    if (operand == '÷') {
      divideOutput = num1 / num2;
      preserveOutput = divideOutput.toInt();
      lastOutput = preserveOutput.toString();
      num1 = preserveOutput;
      num2 = 0;
      logger.d('num1: $num1, num2: $num2, divideOutput: $divideOutput');
    }
    operand = '';
  }

  void onButtonPressed(String buttonText) {
    logger.d(buttonText);
    if (buttonText == 'C') {
      operand = '';
      num1 = 0;
      num2 = 0;
      lastOutput = '0';
      preserveOutput = 0;
    } else if (inttext.contains(buttonText)) {
      if (lastOutput == '0') {
        lastOutput = buttonText;
        num1 = int.parse(lastOutput);
      } else if (lastOutput != '0') {
        if (opetext.contains(operand)) {
          if (num2 == 0) {
            lastOutput = buttonText;
          } else {
            lastOutput = lastOutput + buttonText;
          }
          num2 = int.parse(lastOutput);
        } else {
          lastOutput = lastOutput + buttonText;
          num1 = int.parse(lastOutput);
          preserveOutput = num1;
        }
      }
    } else if (buttonText == '=') {
      opeCalculate(operand, num1, num2);
    } else if (opetext.contains(buttonText)) {
      if (operand == '') {
        operand = buttonText;
        lastOutput = operand;
      } else {
        if (operand == '+') {
          preserveOutput = num1 + num2;
          lastOutput = preserveOutput.toString();
        }
        if (operand == '-') {
          preserveOutput = num1 - num2;
          lastOutput = preserveOutput.toString();
        }
        if (operand == '×') {
          preserveOutput = num1 * num2;
          lastOutput = preserveOutput.toString();
        }
        if (operand == '÷') {
          divideOutput = num1 / num2;
          lastOutput = divideOutput.toString();
        }
        operand = buttonText;
        num1 = preserveOutput;
        num2 = 0;
      }
    }

    state = state.copyWith(
        result: lastOutput,
        operand: operand,
        num1: num1,
        num2: num2,
        preserveoutput: preserveOutput);

    logger.d(
        'lastOutput: $lastOutput,  num1: $num1, num2: $num2, operand: $operand, preserveOutput: $preserveOutput');
  }
}

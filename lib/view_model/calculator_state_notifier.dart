import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:untitled/view_model/calculator_view_model.dart';

final calculatorViewModelProvider =
    StateNotifierProvider<CalculatorStateNotifier, CalculatorViewModel>((ref) {
  return CalculatorStateNotifier(
    const CalculatorViewModel(
        result: '0', ),
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
  Decimal preserveOutput = Decimal.zero ; //計算結果を保持する用
  Decimal num1 = Decimal.zero ; //初めに入力される数字
  Decimal num2 = Decimal.zero; //2回目から入力される数字
  double divideOutput = 0.0;
  String operand = ''; //演算子

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  void opeCalculate() {
    if (operand == '+') {
      preserveOutput = num1 + num2;
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '-') {
      preserveOutput = num1 - num2;
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '×') {
      preserveOutput = num1 * num2;
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '÷') {
      preserveOutput = (num1 / num2).toDecimal();
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    lastOutput = preserveOutput.toString();
    num1 = preserveOutput;
    num2 = Decimal.parse('0');
    operand = '';
  }

  void onButtonPressed(String buttonText) {
    logger.d(buttonText);
    if (buttonText == 'C') {
      operand = '';
      num1 = Decimal.parse('0');
      num2 = Decimal.parse('0');
      lastOutput = '0';
      preserveOutput = Decimal.parse('0');
    } else if (inttext.contains(buttonText)) {
      if (lastOutput == '0') {
        lastOutput = buttonText;
        num1 = Decimal.parse(lastOutput);
      } else if (lastOutput != '0') {
        if (opetext.contains(operand)) {
          if (num2 == Decimal.parse('0')) {
            lastOutput = buttonText;
          } else {
            lastOutput = lastOutput + buttonText;
          }
          num2 = Decimal.parse(lastOutput);
        } else {
          lastOutput = lastOutput + buttonText;
          num1 = Decimal.parse(lastOutput);
          preserveOutput = num1;
        }
      }
    } else if (buttonText == '=') {
      opeCalculate();
    } else if (opetext.contains(buttonText)) {
      if (operand == '') {
        operand = buttonText;
      } else {
        if (operand == '+') {
          preserveOutput = num1 + num2;
          lastOutput = preserveOutput.toString();
          logger.d('preserveOutput: $preserveOutput, lastOutput: $lastOutput');
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
          preserveOutput = (num1 / num2).toDecimal();
          lastOutput = preserveOutput.toString();
        }
        operand = buttonText;
        num1 = preserveOutput;
        num2 = Decimal.parse('0');
      }
    }
    state = state.copyWith(
        result: lastOutput,
        );
    logger.d(
        'lastOutput: $lastOutput,  num1: $num1, num2: $num2, operand: $operand, preserveOutput: $preserveOutput');
  }
}

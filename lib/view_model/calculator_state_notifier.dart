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
  Decimal preserveOutput = Decimal.zero;  //計算結果を保持する用
  Decimal num1 = Decimal.zero;  //初めに入力される数字
  Decimal num2 = Decimal.zero; //2回目から入力される数字
  Decimal divideOutput = Decimal.zero; //割り算の計算結果の格納用
  double divide1 = 0;//初めに入力される数字(割り算)
  double divide2 = 0;//2回目から入力される数字(割り算)
  double temporaryDivideOutput = 0; //割り算の結果の一時保存用
  double scaled = 0; //割り算の結果を四捨五入する用
  String operand = ''; //演算子
  RegExp reg = RegExp(r'\.0+$'); //小数点の末尾の0を削除するため

  var logger = Logger(
    printer: PrettyPrinter(),
  );

  void opeCalculate() {
    if (operand == '+') {
      preserveOutput = num1 + num2;
      lastOutput = preserveOutput.toString();
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '-') {
      preserveOutput = num1 - num2;
      lastOutput = preserveOutput.toString();
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '×') {
      preserveOutput = num1 * num2;
      lastOutput = preserveOutput.toString();
      logger.d('num1: $num1, num2: $num2, preserveOutput: $preserveOutput');
    }
    if (operand == '÷') {
      divide1 = double.parse(num1.toString());
      divide2 = double.parse(num2.toString());
      temporaryDivideOutput = (divide1/divide2);
      scaled =(temporaryDivideOutput * 1000).round() / 1000;
      lastOutput = Decimal.parse(scaled.toString()).toString().replaceAll(reg, '');
      preserveOutput = Decimal.parse(temporaryDivideOutput.toString());
      logger.d('num1: $num1, num2: $num2,  preserveOutput: $preserveOutput');
    }
    num1 = preserveOutput;
    num2 = Decimal.zero;
    operand = '';
    logger.d('num1: $num1, num2: $num2, operand: $operand, lastOutput; $lastOutput');
  }

  void onButtonPressed(String buttonText) {
    logger.d(buttonText);
    if (buttonText == 'C') {
      operand = '';
      num1 = Decimal.zero;
      num2 = Decimal.zero;
      lastOutput = '0';
      preserveOutput = Decimal.zero;
    } else if (inttext.contains(buttonText)) {
      if (lastOutput == '0') {
        lastOutput = buttonText;
        num1 = Decimal.parse(lastOutput);
      } else if (lastOutput != '0') {
        if (opetext.contains(operand)) {
          if (num2 == Decimal.zero) {
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
          divide1 = double.parse(num1.toString());
          divide2 = double.parse(num2.toString());
          temporaryDivideOutput = (divide1/divide2);
          scaled =(temporaryDivideOutput * 1000).round() / 1000;
          lastOutput = Decimal.parse(scaled.toString()).toString().replaceAll(reg, '');
          preserveOutput = Decimal.parse(temporaryDivideOutput.toString());
        }
        operand = buttonText;
        num1 = preserveOutput;
        num2 = Decimal.zero;
      }
    }

    state = state.copyWith(
        result: lastOutput,
        );

    logger.d(
        'lastOutput: $lastOutput,  num1: $num1, num2: $num2, operand: $operand, preserveOutput: $preserveOutput');
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatorViewModelImpl _$$CalculatorViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatorViewModelImpl(
      result: json['result'] as String,
      operand: json['operand'] as String,
      num1: json['num1'] as int,
      num2: json['num2'] as int,
      preserveoutput: json['preserveoutput'] as int,
    );

Map<String, dynamic> _$$CalculatorViewModelImplToJson(
        _$CalculatorViewModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'operand': instance.operand,
      'num1': instance.num1,
      'num2': instance.num2,
      'preserveoutput': instance.preserveoutput,
    };

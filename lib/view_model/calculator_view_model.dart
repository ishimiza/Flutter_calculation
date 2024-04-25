import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_view_model.freezed.dart';
part 'calculator_view_model.g.dart';

@freezed
class CalculatorViewModel with _$CalculatorViewModel {
  const factory CalculatorViewModel({
    required String result,
  }) = _CalculatorViewModel;

  factory CalculatorViewModel.fromJson(Map<String, dynamic> json) =>
      _$CalculatorViewModelFromJson(json);
}

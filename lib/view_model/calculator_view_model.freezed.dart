// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatorViewModel _$CalculatorViewModelFromJson(Map<String, dynamic> json) {
  return _CalculatorViewModel.fromJson(json);
}

/// @nodoc
mixin _$CalculatorViewModel {
  String get result => throw _privateConstructorUsedError;
  String get operand => throw _privateConstructorUsedError;
  int get num1 => throw _privateConstructorUsedError;
  int get num2 => throw _privateConstructorUsedError;
  int get preserveoutput => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatorViewModelCopyWith<CalculatorViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorViewModelCopyWith<$Res> {
  factory $CalculatorViewModelCopyWith(
          CalculatorViewModel value, $Res Function(CalculatorViewModel) then) =
      _$CalculatorViewModelCopyWithImpl<$Res, CalculatorViewModel>;
  @useResult
  $Res call(
      {String result, String operand, int num1, int num2, int preserveoutput});
}

/// @nodoc
class _$CalculatorViewModelCopyWithImpl<$Res, $Val extends CalculatorViewModel>
    implements $CalculatorViewModelCopyWith<$Res> {
  _$CalculatorViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? operand = null,
    Object? num1 = null,
    Object? num2 = null,
    Object? preserveoutput = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      operand: null == operand
          ? _value.operand
          : operand // ignore: cast_nullable_to_non_nullable
              as String,
      num1: null == num1
          ? _value.num1
          : num1 // ignore: cast_nullable_to_non_nullable
              as int,
      num2: null == num2
          ? _value.num2
          : num2 // ignore: cast_nullable_to_non_nullable
              as int,
      preserveoutput: null == preserveoutput
          ? _value.preserveoutput
          : preserveoutput // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorViewModelImplCopyWith<$Res>
    implements $CalculatorViewModelCopyWith<$Res> {
  factory _$$CalculatorViewModelImplCopyWith(_$CalculatorViewModelImpl value,
          $Res Function(_$CalculatorViewModelImpl) then) =
      __$$CalculatorViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result, String operand, int num1, int num2, int preserveoutput});
}

/// @nodoc
class __$$CalculatorViewModelImplCopyWithImpl<$Res>
    extends _$CalculatorViewModelCopyWithImpl<$Res, _$CalculatorViewModelImpl>
    implements _$$CalculatorViewModelImplCopyWith<$Res> {
  __$$CalculatorViewModelImplCopyWithImpl(_$CalculatorViewModelImpl _value,
      $Res Function(_$CalculatorViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? operand = null,
    Object? num1 = null,
    Object? num2 = null,
    Object? preserveoutput = null,
  }) {
    return _then(_$CalculatorViewModelImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      operand: null == operand
          ? _value.operand
          : operand // ignore: cast_nullable_to_non_nullable
              as String,
      num1: null == num1
          ? _value.num1
          : num1 // ignore: cast_nullable_to_non_nullable
              as int,
      num2: null == num2
          ? _value.num2
          : num2 // ignore: cast_nullable_to_non_nullable
              as int,
      preserveoutput: null == preserveoutput
          ? _value.preserveoutput
          : preserveoutput // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorViewModelImpl implements _CalculatorViewModel {
  const _$CalculatorViewModelImpl(
      {required this.result,
      required this.operand,
      required this.num1,
      required this.num2,
      required this.preserveoutput});

  factory _$CalculatorViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorViewModelImplFromJson(json);

  @override
  final String result;
  @override
  final String operand;
  @override
  final int num1;
  @override
  final int num2;
  @override
  final int preserveoutput;

  @override
  String toString() {
    return 'CalculatorViewModel(result: $result, operand: $operand, num1: $num1, num2: $num2, preserveoutput: $preserveoutput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorViewModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.operand, operand) || other.operand == operand) &&
            (identical(other.num1, num1) || other.num1 == num1) &&
            (identical(other.num2, num2) || other.num2 == num2) &&
            (identical(other.preserveoutput, preserveoutput) ||
                other.preserveoutput == preserveoutput));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, operand, num1, num2, preserveoutput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorViewModelImplCopyWith<_$CalculatorViewModelImpl> get copyWith =>
      __$$CalculatorViewModelImplCopyWithImpl<_$CalculatorViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatorViewModelImplToJson(
      this,
    );
  }
}

abstract class _CalculatorViewModel implements CalculatorViewModel {
  const factory _CalculatorViewModel(
      {required final String result,
      required final String operand,
      required final int num1,
      required final int num2,
      required final int preserveoutput}) = _$CalculatorViewModelImpl;

  factory _CalculatorViewModel.fromJson(Map<String, dynamic> json) =
      _$CalculatorViewModelImpl.fromJson;

  @override
  String get result;
  @override
  String get operand;
  @override
  int get num1;
  @override
  int get num2;
  @override
  int get preserveoutput;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorViewModelImplCopyWith<_$CalculatorViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

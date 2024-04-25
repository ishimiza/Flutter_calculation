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
  $Res call({String result});
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
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String result});
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
  }) {
    return _then(_$CalculatorViewModelImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatorViewModelImpl implements _CalculatorViewModel {
  const _$CalculatorViewModelImpl({required this.result});

  factory _$CalculatorViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatorViewModelImplFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'CalculatorViewModel(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorViewModelImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

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
  const factory _CalculatorViewModel({required final String result}) =
      _$CalculatorViewModelImpl;

  factory _CalculatorViewModel.fromJson(Map<String, dynamic> json) =
      _$CalculatorViewModelImpl.fromJson;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorViewModelImplCopyWith<_$CalculatorViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'herbal_trivia_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HerbalTriviaStateTearOff {
  const _$HerbalTriviaStateTearOff();

  _HerbalTriviaState call(
      {List<HerbalTriviaModel> results = const [],
      Status status = Status.initial,
      String? errorMessage}) {
    return _HerbalTriviaState(
      results: results,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $HerbalTriviaState = _$HerbalTriviaStateTearOff();

/// @nodoc
mixin _$HerbalTriviaState {
  List<HerbalTriviaModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HerbalTriviaStateCopyWith<HerbalTriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HerbalTriviaStateCopyWith<$Res> {
  factory $HerbalTriviaStateCopyWith(
          HerbalTriviaState value, $Res Function(HerbalTriviaState) then) =
      _$HerbalTriviaStateCopyWithImpl<$Res>;
  $Res call(
      {List<HerbalTriviaModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$HerbalTriviaStateCopyWithImpl<$Res>
    implements $HerbalTriviaStateCopyWith<$Res> {
  _$HerbalTriviaStateCopyWithImpl(this._value, this._then);

  final HerbalTriviaState _value;
  // ignore: unused_field
  final $Res Function(HerbalTriviaState) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<HerbalTriviaModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HerbalTriviaStateCopyWith<$Res>
    implements $HerbalTriviaStateCopyWith<$Res> {
  factory _$HerbalTriviaStateCopyWith(
          _HerbalTriviaState value, $Res Function(_HerbalTriviaState) then) =
      __$HerbalTriviaStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<HerbalTriviaModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$HerbalTriviaStateCopyWithImpl<$Res>
    extends _$HerbalTriviaStateCopyWithImpl<$Res>
    implements _$HerbalTriviaStateCopyWith<$Res> {
  __$HerbalTriviaStateCopyWithImpl(
      _HerbalTriviaState _value, $Res Function(_HerbalTriviaState) _then)
      : super(_value, (v) => _then(v as _HerbalTriviaState));

  @override
  _HerbalTriviaState get _value => super._value as _HerbalTriviaState;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_HerbalTriviaState(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<HerbalTriviaModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HerbalTriviaState implements _HerbalTriviaState {
  _$_HerbalTriviaState(
      {this.results = const [],
      this.status = Status.initial,
      this.errorMessage});

  @JsonKey()
  @override
  final List<HerbalTriviaModel> results;
  @JsonKey()
  @override
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HerbalTriviaState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HerbalTriviaState &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$HerbalTriviaStateCopyWith<_HerbalTriviaState> get copyWith =>
      __$HerbalTriviaStateCopyWithImpl<_HerbalTriviaState>(this, _$identity);
}

abstract class _HerbalTriviaState implements HerbalTriviaState {
  factory _HerbalTriviaState(
      {List<HerbalTriviaModel> results,
      Status status,
      String? errorMessage}) = _$_HerbalTriviaState;

  @override
  List<HerbalTriviaModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$HerbalTriviaStateCopyWith<_HerbalTriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}

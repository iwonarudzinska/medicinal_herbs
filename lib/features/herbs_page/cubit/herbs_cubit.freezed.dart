// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'herbs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HerbsStateTearOff {
  const _$HerbsStateTearOff();

  _HerbsState call(
      {List<ItemModel> documents = const [],
      bool isLoading = false,
      String? errorMessage}) {
    return _HerbsState(
      documents: documents,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $HerbsState = _$HerbsStateTearOff();

/// @nodoc
mixin _$HerbsState {
  List<ItemModel> get documents => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HerbsStateCopyWith<HerbsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HerbsStateCopyWith<$Res> {
  factory $HerbsStateCopyWith(
          HerbsState value, $Res Function(HerbsState) then) =
      _$HerbsStateCopyWithImpl<$Res>;
  $Res call({List<ItemModel> documents, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$HerbsStateCopyWithImpl<$Res> implements $HerbsStateCopyWith<$Res> {
  _$HerbsStateCopyWithImpl(this._value, this._then);

  final HerbsState _value;
  // ignore: unused_field
  final $Res Function(HerbsState) _then;

  @override
  $Res call({
    Object? documents = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HerbsStateCopyWith<$Res> implements $HerbsStateCopyWith<$Res> {
  factory _$HerbsStateCopyWith(
          _HerbsState value, $Res Function(_HerbsState) then) =
      __$HerbsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemModel> documents, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$HerbsStateCopyWithImpl<$Res> extends _$HerbsStateCopyWithImpl<$Res>
    implements _$HerbsStateCopyWith<$Res> {
  __$HerbsStateCopyWithImpl(
      _HerbsState _value, $Res Function(_HerbsState) _then)
      : super(_value, (v) => _then(v as _HerbsState));

  @override
  _HerbsState get _value => super._value as _HerbsState;

  @override
  $Res call({
    Object? documents = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_HerbsState(
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HerbsState implements _HerbsState {
  _$_HerbsState(
      {this.documents = const [], this.isLoading = false, this.errorMessage});

  @JsonKey()
  @override
  final List<ItemModel> documents;
  @JsonKey()
  @override
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HerbsState(documents: $documents, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HerbsState &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$HerbsStateCopyWith<_HerbsState> get copyWith =>
      __$HerbsStateCopyWithImpl<_HerbsState>(this, _$identity);
}

abstract class _HerbsState implements HerbsState {
  factory _HerbsState(
      {List<ItemModel> documents,
      bool isLoading,
      String? errorMessage}) = _$_HerbsState;

  @override
  List<ItemModel> get documents;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$HerbsStateCopyWith<_HerbsState> get copyWith =>
      throw _privateConstructorUsedError;
}

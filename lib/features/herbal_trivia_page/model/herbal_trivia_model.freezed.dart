// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'herbal_trivia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HerbalTriviaModel _$HerbalTriviaModelFromJson(Map<String, dynamic> json) {
  return _HerbalTriviaModel.fromJson(json);
}

/// @nodoc
class _$HerbalTriviaModelTearOff {
  const _$HerbalTriviaModelTearOff();

  _HerbalTriviaModel call(int id, String contents, String answer) {
    return _HerbalTriviaModel(
      id,
      contents,
      answer,
    );
  }

  HerbalTriviaModel fromJson(Map<String, Object?> json) {
    return HerbalTriviaModel.fromJson(json);
  }
}

/// @nodoc
const $HerbalTriviaModel = _$HerbalTriviaModelTearOff();

/// @nodoc
mixin _$HerbalTriviaModel {
  int get id => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HerbalTriviaModelCopyWith<HerbalTriviaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HerbalTriviaModelCopyWith<$Res> {
  factory $HerbalTriviaModelCopyWith(
          HerbalTriviaModel value, $Res Function(HerbalTriviaModel) then) =
      _$HerbalTriviaModelCopyWithImpl<$Res>;
  $Res call({int id, String contents, String answer});
}

/// @nodoc
class _$HerbalTriviaModelCopyWithImpl<$Res>
    implements $HerbalTriviaModelCopyWith<$Res> {
  _$HerbalTriviaModelCopyWithImpl(this._value, this._then);

  final HerbalTriviaModel _value;
  // ignore: unused_field
  final $Res Function(HerbalTriviaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HerbalTriviaModelCopyWith<$Res>
    implements $HerbalTriviaModelCopyWith<$Res> {
  factory _$HerbalTriviaModelCopyWith(
          _HerbalTriviaModel value, $Res Function(_HerbalTriviaModel) then) =
      __$HerbalTriviaModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String contents, String answer});
}

/// @nodoc
class __$HerbalTriviaModelCopyWithImpl<$Res>
    extends _$HerbalTriviaModelCopyWithImpl<$Res>
    implements _$HerbalTriviaModelCopyWith<$Res> {
  __$HerbalTriviaModelCopyWithImpl(
      _HerbalTriviaModel _value, $Res Function(_HerbalTriviaModel) _then)
      : super(_value, (v) => _then(v as _HerbalTriviaModel));

  @override
  _HerbalTriviaModel get _value => super._value as _HerbalTriviaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? answer = freezed,
  }) {
    return _then(_HerbalTriviaModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HerbalTriviaModel implements _HerbalTriviaModel {
  _$_HerbalTriviaModel(this.id, this.contents, this.answer);

  factory _$_HerbalTriviaModel.fromJson(Map<String, dynamic> json) =>
      $$HerbalTriviaModelFromJson(json);

  @override
  final int id;
  @override
  final String contents;
  @override
  final String answer;

  @override
  String toString() {
    return 'HerbalTriviaModel(id: $id, contents: $contents, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HerbalTriviaModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$HerbalTriviaModelCopyWith<_HerbalTriviaModel> get copyWith =>
      __$HerbalTriviaModelCopyWithImpl<_HerbalTriviaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return $$HerbalTriviaModelToJson(this);
  }
}

abstract class _HerbalTriviaModel implements HerbalTriviaModel {
  factory _HerbalTriviaModel(int id, String contents, String answer) =
      _$_HerbalTriviaModel;

  factory _HerbalTriviaModel.fromJson(Map<String, dynamic> json) =
      _$_HerbalTriviaModel.fromJson;

  @override
  int get id;
  @override
  String get contents;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$HerbalTriviaModelCopyWith<_HerbalTriviaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

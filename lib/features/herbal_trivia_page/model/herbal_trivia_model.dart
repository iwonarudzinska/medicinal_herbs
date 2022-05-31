import 'package:freezed_annotation/freezed_annotation.dart';

part 'herbal_trivia_model.g.dart';
part 'herbal_trivia_model.freezed.dart';

@freezed
class HerbalTriviaModel with _$HerbalTriviaModel {
  factory HerbalTriviaModel(
    int id,
    String contents,
    String answer,
    ) = _HerbalTriviaModel;

  factory HerbalTriviaModel.fromJson(Map<String, dynamic> json) => _$HerbalTriviaModelFromJson(json);
}
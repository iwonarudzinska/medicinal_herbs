import 'package:json_annotation/json_annotation.dart';
part 'herbal_trivia_model.g.dart';


@JsonSerializable()
class HerbalTriviaModel {
  const HerbalTriviaModel({
    required this.id,
    required this.contents,
    required this.answer,
  });

  final int id;
  final String contents;
  final String answer;


  factory HerbalTriviaModel.fromJson(Map<String, dynamic> json) => _$HerbalTriviaModelFromJson(json);

  Map<String, dynamic> toJson() => _$HerbalTriviaModelToJson(this);

  // HerbalTriviaModel.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       contents = json['contents'],
  //       answer = json['answer'];
}

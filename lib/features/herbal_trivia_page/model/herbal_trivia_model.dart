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



// @JsonSerializable()
// class HerbalTriviaModel {
//   const HerbalTriviaModel({
//     required this.id,
//     required this.contents,
//     required this.answer,
//   });

//   final int id;
//   final String contents;
//   final String answer;


//   factory HerbalTriviaModel.fromJson(Map<String, dynamic> json) => _$HerbalTriviaModelFromJson(json);

//   Map<String, dynamic> toJson() => _$HerbalTriviaModelToJson(this);

  // HerbalTriviaModel.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       contents = json['contents'],
  //       answer = json['answer'];
// }

class HerbalTriviaModel {
  const HerbalTriviaModel({
    required this.id,
    required this.contents,
    required this.answer,
  });

  final int id;
  final String contents;
  final String answer;

  HerbalTriviaModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        contents = json['contents'],
        answer = json['answer'];
}

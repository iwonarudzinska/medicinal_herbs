import 'package:dio/dio.dart';

class HerbalTriviaMockedDataSource {
  Future<List<Map<String, dynamic>>?> getHerbalTrivia() async {
    return [
      {
        'id': 1,
        'contents': 'contents',
        'answer': 'answer',
      },
      {
        'id': 2,
        'contents': 'contents2',
        'answer': 'answer2',
      },
    ];
  }
}

class HerbalTriviaRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getHerbalTrivia() async {
    final response = await Dio().get<List<dynamic>>(
        'http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_json/trivia');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}

import 'package:dio/dio.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';
import 'package:retrofit/retrofit.dart';

// class HerbalTriviaMockedDataSource {
//   Future<List<Map<String, dynamic>>?> getHerbalTrivia() async {
//     return [
//       {
//         'id': 1,
//         'contents': 'contents',
//         'answer': 'answer',
//       },
//       {
//         'id': 2,
//         'contents': 'contents2',
//         'answer': 'answer2',
//       },
//     ];
//   }
// }

part 'herbal_trivia_data_source.g.dart';

@RestApi(baseUrl: "http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_json")
abstract class HerbalTriviaRemoteRetrofitDataSource {
  factory HerbalTriviaRemoteRetrofitDataSource(Dio dio, {String baseUrl}) = _HerbalTriviaRemoteRetrofitDataSource;

  @GET("/trivia")
  Future<List<HerbalTriviaModel>> getHerbalTrivia();
}

// class HerbalTriviaRemoteDioDataSource {
//   Future<List<Map<String, dynamic>>?> getHerbalTrivia() async {
//     final response = await Dio().get<List<dynamic>>(
//         'http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_json/trivia');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }

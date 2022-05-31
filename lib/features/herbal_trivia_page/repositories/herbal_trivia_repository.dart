import 'package:medicinal_herbs/features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';

class HerbalTriviaRepository {
  HerbalTriviaRepository({required this.remoteDataSource});

  final HerbalTriviaRemoteDioDataSource remoteDataSource;

  Future<List<HerbalTriviaModel>> getHerbalTriviaModels() async {
    final json = await remoteDataSource.getHerbalTrivia();
    if (json == null) {
      return [];
    }
    return json.map((item) => HerbalTriviaModel.fromJson(item)).toList();
  }
}

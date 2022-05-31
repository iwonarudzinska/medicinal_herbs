import 'package:medicinal_herbs/features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';


class HerbalTriviaRepository {
  HerbalTriviaRepository({required this.remoteDataSource});

  final HerbalTriviaRemoteRetrofitDataSource remoteDataSource;

  Future<List<HerbalTriviaModel>> getHerbalTriviaModels() async {
    return await remoteDataSource.getHerbalTrivia();
  }
}

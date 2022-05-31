import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';
import 'package:retrofit/retrofit.dart';

part 'herbal_trivia_data_source.g.dart';

@injectable
@RestApi()
abstract class HerbalTriviaRemoteRetrofitDataSource {
  @factoryMethod
  factory HerbalTriviaRemoteRetrofitDataSource(Dio dio) = _HerbalTriviaRemoteRetrofitDataSource;

  @GET("/trivia")
  Future<List<HerbalTriviaModel>> getHerbalTrivia();
}
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/repositories/herbal_trivia_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerFactory(
      () => HerbalTriviaCubit(herbalTriviaRepository: getIt()));
  getIt
      .registerFactory(() => HerbalTriviaRepository(remoteDataSource: getIt()));
  getIt.registerFactory(() => HerbalTriviaRemoteRetrofitDataSource(Dio()));
}

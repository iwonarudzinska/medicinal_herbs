// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart' as _i6;
import '../features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart'
    as _i4;
import '../features/herbal_trivia_page/repositories/herbal_trivia_repository.dart'
    as _i5;
import 'injection_container.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i3.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i4.HerbalTriviaRemoteRetrofitDataSource>(
      () => _i4.HerbalTriviaRemoteRetrofitDataSource(get<_i3.Dio>()));
  gh.factory<_i5.HerbalTriviaRepository>(() => _i5.HerbalTriviaRepository(
      remoteDataSource: get<_i4.HerbalTriviaRemoteRetrofitDataSource>()));
  gh.factory<_i6.HerbalTriviaCubit>(() => _i6.HerbalTriviaCubit(
      herbalTriviaRepository: get<_i5.HerbalTriviaRepository>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}

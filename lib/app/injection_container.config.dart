// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/pages/cubit/auth_cubit.dart' as _i3;
import '../data/remote_data_sources/items_remote_data_source.dart' as _i5;
import '../domain/repositories/items_repository.dart' as _i4;
import '../features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart' as _i10;
import '../features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart'
    as _i7;
import '../features/herbal_trivia_page/repositories/herbal_trivia_repository.dart'
    as _i8;
import '../features/herbs_page/cubit/herbs_cubit.dart' as _i9;
import 'injection_container.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
  gh.factory<_i4.ItemsRepository>(
      () => _i4.ItemsRepository(get<_i5.ItemsRemoteDataSource>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i6.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i7.HerbalTriviaRemoteRetrofitDataSource>(
      () => _i7.HerbalTriviaRemoteRetrofitDataSource(get<_i6.Dio>()));
  gh.factory<_i8.HerbalTriviaRepository>(() => _i8.HerbalTriviaRepository(
      remoteDataSource: get<_i7.HerbalTriviaRemoteRetrofitDataSource>()));
  gh.factory<_i9.HerbsCubit>(() => _i9.HerbsCubit(get<_i4.ItemsRepository>()));
  gh.factory<_i10.HerbalTriviaCubit>(() => _i10.HerbalTriviaCubit(
      herbalTriviaRepository: get<_i8.HerbalTriviaRepository>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../auth/pages/cubit/auth_cubit.dart' as _i3;
import '../features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart' as _i9;
import '../features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart'
    as _i6;
import '../features/herbal_trivia_page/repositories/herbal_trivia_repository.dart'
    as _i7;
import '../features/herbs_page/cubit/herbs_cubit.dart' as _i8;
import '../repositories/items_repository.dart' as _i4;
import 'injection_container.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
  gh.factory<_i4.ItemsRepository>(() => _i4.ItemsRepository());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i5.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i6.HerbalTriviaRemoteRetrofitDataSource>(
      () => _i6.HerbalTriviaRemoteRetrofitDataSource(get<_i5.Dio>()));
  gh.factory<_i7.HerbalTriviaRepository>(() => _i7.HerbalTriviaRepository(
      remoteDataSource: get<_i6.HerbalTriviaRemoteRetrofitDataSource>()));
  gh.factory<_i8.HerbsCubit>(() => _i8.HerbsCubit(get<_i4.ItemsRepository>()));
  gh.factory<_i9.HerbalTriviaCubit>(() => _i9.HerbalTriviaCubit(
      herbalTriviaRepository: get<_i7.HerbalTriviaRepository>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}

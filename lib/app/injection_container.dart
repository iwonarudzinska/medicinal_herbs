import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:medicinal_herbs/app/core/config.dart';
import 'package:medicinal_herbs/app/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()  
void configureDependencies() => $initGetIt(getIt);

@module  
abstract class RegisterModule {  

  @Named("BaseUrl")  
  String get baseUrl => Config.baseUrl;  
  

  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  
  
}
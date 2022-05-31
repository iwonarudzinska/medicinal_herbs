import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:medicinal_herbs/app/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()  
void configureDependencies() => $initGetIt(getIt);

@module  
abstract class RegisterModule {  

  @Named("BaseUrl")  
  String get baseUrl => 'http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_json';  
  

  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  
  
}
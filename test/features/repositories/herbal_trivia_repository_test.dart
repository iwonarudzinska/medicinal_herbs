import 'package:flutter_test/flutter_test.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/repositories/herbal_trivia_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockHerbalTriviaDataSource extends Mock
    implements HerbalTriviaRemoteRetrofitDataSource {}

void main() {
  late HerbalTriviaRepository sut;
  late MockHerbalTriviaDataSource dataSource;

  setUp(() {
    dataSource = MockHerbalTriviaDataSource();
    sut = HerbalTriviaRepository(remoteDataSource: dataSource);
  });

  group('getHerbalTriviaModels', () {
    test('should call remoteDataSource.getHerbalTrivia() method', () async {
      when(() => dataSource.getHerbalTrivia()).thenAnswer(
        (_) async => [],
      );

      await sut.getHerbalTriviaModels();
      verify(() => dataSource.getHerbalTrivia()).called(1);
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medicinal_herbs/app/core/enums.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/repositories/herbal_trivia_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockHerbalTriviaRepository extends Mock
    implements HerbalTriviaRepository {}

void main() {
  late HerbalTriviaCubit sut;
  late MockHerbalTriviaRepository repository;

  setUp(() {
    repository = MockHerbalTriviaRepository();
    sut = HerbalTriviaCubit(herbalTriviaRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getHerbalTriviaModels()).thenAnswer(
          (_) async => [
            HerbalTriviaModel(1, 'contents1', 'answer1'),
            HerbalTriviaModel(1, 'contents2', 'answer2'),
            HerbalTriviaModel(1, 'contents3', 'answer3')
          ],
        );
      });

      blocTest<HerbalTriviaCubit, HerbalTriviaState>(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          HerbalTriviaState(
            status: Status.loading,
          ),
          HerbalTriviaState(
            status: Status.success,
            results: [
              HerbalTriviaModel(1, 'contents1', 'answer1'),
              HerbalTriviaModel(1, 'contents2', 'answer2'),
              HerbalTriviaModel(1, 'contents3', 'answer3'),
            ],
          )
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getHerbalTriviaModels()).thenThrow(Exception('test-exception-error'));
      });

      blocTest<HerbalTriviaCubit, HerbalTriviaState>(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          HerbalTriviaState(
            status: Status.loading,
          ),
          HerbalTriviaState(
            status: Status.error,
            errorMessage:  'Exception: test-exception-error',
          )
        ],
      );
    });
  });
}

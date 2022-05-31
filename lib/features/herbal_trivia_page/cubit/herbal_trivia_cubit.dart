import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicinal_herbs/app/core/enums.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/repositories/herbal_trivia_repository.dart';

part 'herbal_trivia_state.dart';
part 'herbal_trivia_cubit.freezed.dart';

class HerbalTriviaCubit extends Cubit<HerbalTriviaState> {
  HerbalTriviaCubit({required this.herbalTriviaRepository})
      : super(HerbalTriviaState());

  final HerbalTriviaRepository herbalTriviaRepository;

  Future<void> start() async {
    emit(
      HerbalTriviaState(
        status: Status.loading,
      ),
    );
    try {
      final results = await herbalTriviaRepository.getHerbalTriviaModels();
      emit(HerbalTriviaState(
        status: Status.success,
        results: results,
      ));
    } catch (error) {
      emit(
        HerbalTriviaState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}

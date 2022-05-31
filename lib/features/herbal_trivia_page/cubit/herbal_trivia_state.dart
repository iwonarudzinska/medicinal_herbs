part of 'herbal_trivia_cubit.dart';

@freezed
class HerbalTriviaState with _$HerbalTriviaState {
  factory HerbalTriviaState({
    @Default([]) List<HerbalTriviaModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _HerbalTriviaState;
}

part of 'herbal_trivia_cubit.dart';

class HerbalTriviaState {
  HerbalTriviaState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<HerbalTriviaModel> results;
  final Status status;
  final String? errorMessage;
}

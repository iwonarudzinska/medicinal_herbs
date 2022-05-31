part of 'herbal_trivia_cubit.dart';

@freezed
class HerbalTriviaState with _$HerbalTriviaState {
  factory HerbalTriviaState({
    @Default([]) List<HerbalTriviaModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _HerbalTriviaState;
}


// class HerbalTriviaState {
//   HerbalTriviaState({
//     this.results = const [],
//     this.status = Status.initial,
//     this.errorMessage,
//   });

//   final List<HerbalTriviaModel> results;
//   final Status status;
//   final String? errorMessage;
// }

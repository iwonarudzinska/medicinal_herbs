import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'herbal_trivia_state.dart';

class HerbalTriviaCubit extends Cubit<HerbalTriviaState> {
  HerbalTriviaCubit() : super(HerbalTriviaInitial());
}

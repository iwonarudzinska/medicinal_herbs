import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'herbs_state.dart';

class HerbsCubit extends Cubit<HerbsState> {
  HerbsCubit()
      : super(
          HerbsState(
            documents: const [],
            errorMessage: '',
            isLoading: false,
          ),
        );
}

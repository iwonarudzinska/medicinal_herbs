import 'dart:async';

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

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      HerbsState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('herbs')
        .snapshots()
        .listen((data) {
      emit(
        HerbsState(documents: data.docs, isLoading: false, errorMessage: ''),
      );
    })
      ..onError((error) {
        emit(
          HerbsState(
            documents: [],
            isLoading: false,
            errorMessage: error.toString(),
          ),
        );
      });
  }

   Future<void> delete({
    required document,
    
  }) async {
    FirebaseFirestore.instance.collection('herbs').doc(document.id).delete();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}

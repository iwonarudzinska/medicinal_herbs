import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicinal_herbs/models/item_model.dart';

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

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  Future<void> add({
    required image,
    required name,
    required description,
  }) async {
    FirebaseFirestore.instance.collection('herbs').add({
      'image': image,
      'name': name,
      'description': description,
    });
  }

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
      final itemModels = data.docs.map((doc) {
        return ItemModel(
          id: doc.id,
            image: doc['image'],
            name: doc['name'],
            description: doc['description']);
      }).toList();
      emit(
        HerbsState(documents: itemModels, isLoading: false, errorMessage: ''),
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

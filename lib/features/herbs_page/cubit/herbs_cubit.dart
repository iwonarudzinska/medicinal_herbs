import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:medicinal_herbs/domain/models/item_model.dart';
import 'package:medicinal_herbs/domain/repositories/items_repository.dart';

part 'herbs_state.dart';

class HerbsCubit extends Cubit<HerbsState> {
  HerbsCubit(this._itemsRepository)
      : super(
          HerbsState(
            documents: const [],
            errorMessage: '',
            isLoading: false,
          ),
        );
  final ItemsRepository _itemsRepository;
  StreamSubscription? _streamSubscription;

  Future<void> signOut() async {
    _itemsRepository.signOut();
  }

  Future<void> add({
    required image,
    required name,
    required description,
  }) async {
    await _itemsRepository.add(
        image: image, name: name, description: description);
  }

  Future<void> start() async {
    emit(
      HerbsState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = _itemsRepository.getItemsStream().listen((data) {
      emit(
        HerbsState(documents: data, isLoading: false, errorMessage: ''),
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
    required String documentID,
  }) async {
    await _itemsRepository.delete(id: documentID);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}

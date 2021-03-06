import 'package:injectable/injectable.dart';
import 'package:medicinal_herbs/domain/models/item_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicinal_herbs/data/remote_data_sources/items_remote_data_source.dart';

@injectable
class ItemsRepository {
  ItemsRepository(this._itemsRemoteDataSource);

  final ItemsRemoteDataSource _itemsRemoteDataSource;

  Stream<List<ItemModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return _itemsRemoteDataSource.itemsRemoteData().map(
      (querySnapshot) {
        return querySnapshot!.docs
            .map((doc) => ItemModel.fromJson(doc.data()).copyWith(id: doc.id))
            .toList();
      },
    );
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return _itemsRemoteDataSource.delete(id: id);
  }

  Future<void> add({
    required image,
    required name,
    required description,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await _itemsRemoteDataSource.add(
        image: image, name: name, description: description);
  }

  Future<void> signOut() {
    return _itemsRemoteDataSource.signOut();
  }
}

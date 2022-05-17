import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medicinal_herbs/models/item_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ItemsRepository {
  Stream<List<ItemModel>> getItemsStream() {
    return FirebaseFirestore.instance.collection('herbs').snapshots().map(
      (querySnapshot) {
        return querySnapshot.docs.map(
          (doc) {
            return ItemModel(
                id: doc.id,
                image: doc['image'],
                name: doc['name'],
                description: doc['description']);
          },
        ).toList();
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('herbs').doc(id).delete();
  }

  Future<void> add({
    required image,
    required name,
    required description,
  }) async {
    await FirebaseFirestore.instance.collection('herbs').add({
      'image': image,
      'name': name,
      'description': description,
    });
  }

  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}

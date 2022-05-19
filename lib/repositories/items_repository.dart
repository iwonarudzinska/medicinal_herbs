import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medicinal_herbs/models/item_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ItemsRepository {
  Stream<List<ItemModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('herbs')
        .snapshots()
        .map(
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
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('herbs')
        .doc(id)
        .delete();
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
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('herbs')
        .add({
      'image': image,
      'name': name,
      'description': description,
    });
  }

  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }
}

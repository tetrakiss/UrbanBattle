import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');

class Database {
  static String? userUid;

  static Future<void> addItem({
    required String title,
    required String description,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc();
    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "description": description,
    };
    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item added"))
        .catchError((e) => print((e)));
  }
}

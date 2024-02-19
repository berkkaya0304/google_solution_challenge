import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'endemic_repository.dart';

class FirebaseEndemicRepo implements EndemicRepo {
  final endemicCollection = FirebaseFirestore.instance.collection('endemics');

  Future<List<Endemic>> getEndemics() async {
    try {
      return await endemicCollection.get().then((value) => value.docs
          .map((e) => Endemic.fromEntity(EndemicEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

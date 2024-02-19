import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'donation_repository.dart';

class FirebaseDonationRepo implements DonationRepo {
  final donationCollection = FirebaseFirestore.instance.collection('donations');

  Future<List<Donation>> getDonations() async {
    try {
      return await donationCollection.get().then((value) => value.docs
          .map((e) => Donation.fromEntity(DonationEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

class DonationEntity {
  String donationId;
  String picture;
  String name;
  String description;
  String price;

  DonationEntity({
    required this.donationId,
    required this.picture,
    required this.name,
    required this.description,
    required this.price
  });

  Map<String, Object?> toDocument() {
    return {
      'donationId': donationId,
      'picture': picture,
      'name': name,
      'description': description,
      'price' : price,
    };
  }

  static DonationEntity fromDocument(Map<String, dynamic> doc) {
    return DonationEntity(
      donationId: doc['donationId'],
      picture: doc['picture'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price']
    );
  }
}

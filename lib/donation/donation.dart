import 'donationentity.dart';

class Donation {
  String donationId;
  String picture;
  String name;
  String description;
  String price;

  Donation({
    required this.donationId,
    required this.picture,
    required this.name,
    required this.description,
    required this.price,
  });

  DonationEntity toEntity() {
    return DonationEntity(
      donationId: donationId,
      picture: picture,
      name: name,
      description: description,
      price: price,
    );
  }

  static Donation fromEntity(DonationEntity entity) {
    return Donation(
      donationId: entity.donationId,
      picture: entity.picture,
      name: entity.name,
      description: entity.description,
      price: entity.price,
    );
  }
}

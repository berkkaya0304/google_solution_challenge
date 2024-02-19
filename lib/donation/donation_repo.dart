import 'models.dart';

abstract class DonationRepo {
  Future<List<Donation>> getDonations();
}

import 'models.dart';

abstract class EndemicRepo {
  Future<List<Endemic>> getEndemics();
}

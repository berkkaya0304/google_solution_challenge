import 'animalentity.dart';

class Endemic {
  String endemicId;
  String picture;
  String name;
  String description;

  Endemic({
    required this.endemicId,
    required this.picture,
    required this.name,
    required this.description,
  });

  EndemicEntity toEntity() {
    return EndemicEntity(
      endemicId: endemicId,
      picture: picture,
      name: name,
      description: description,
    );
  }

  static Endemic fromEntity(EndemicEntity entity) {
    return Endemic(
      endemicId: entity.endemicId,
      picture: entity.picture,
      name: entity.name,
      description: entity.description,
    );
  }
}

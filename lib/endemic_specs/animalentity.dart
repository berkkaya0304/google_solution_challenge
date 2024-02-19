class EndemicEntity {
  String endemicId;
  String picture;
  String name;
  String description;

  EndemicEntity({
    required this.endemicId,
    required this.picture,
    required this.name,
    required this.description,
  });

  Map<String, Object?> toDocument() {
    return {
      'endemicId': endemicId,
      'picture': picture,
      'name': name,
      'description': description,
    };
  }

  static EndemicEntity fromDocument(Map<String, dynamic> doc) {
    return EndemicEntity(
      endemicId: doc['endemicId'],
      picture: doc['picture'],
      name: doc['name'],
      description: doc['description'],
    );
  }
}

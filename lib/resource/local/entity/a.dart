import 'package:floor/floor.dart';

@entity
class Ab {
  @PrimaryKey(autoGenerate: true)
  final int id;
  final String name;
  final String category;
  final String imageUrl;

  Ab(this.id, this.name, this.category, this.imageUrl);
  Ab.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        category = res["category"],
        imageUrl = res["imageUrl"];

  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'category': category, 'imageUrl': imageUrl};
  }
}

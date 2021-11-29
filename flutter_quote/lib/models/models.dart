import 'dart:convert';

class Phrase1 {
  final int id;
  final String description;
  final String name;

  Phrase1({
    required this.id,
    required this.description,
    required this.name,
  });

  factory Phrase1.fromJson(Map<String, dynamic> json) => Phrase1(
        id: json["id"],
        description: json["description"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "name": name,
      };
}

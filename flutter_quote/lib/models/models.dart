import 'dart:convert';
import 'package:http/http.dart' as http;

List<Phrase1> phrase1FromJson(String str) =>
    List<Phrase1>.from(json.decode(str).map((x) => Phrase1.fromJson(x)));

String phrase1ToJson(List<Phrase1> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Future<Phrase1> fetchPhrase1() async {
  final response = await http.get(Uri.parse("http://10.0.2.2:8000/phrase1"));
  if (response.statusCode == 200) {
    return Phrase1.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load Phrase1');
  }
}

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

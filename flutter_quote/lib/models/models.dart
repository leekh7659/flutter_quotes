import 'dart:convert';

List<Phrase1> phrase1FromJson(String str) =>
    List<Phrase1>.from(json.decode(str).map((x) => Phrase1.fromJson(x)));

String phrase1ToJson(List<Phrase1> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Phrase1 {
  Phrase1({
    required this.id,
    required this.description,
    required this.name,
  });

  final int id;
  final String description;
  final String name;

  //map에서 새로운 Phrase1 인스턴스를 생성하기 위해 필요한 팩토리 생성자입니다.
  //생성된 Phrase1 생성자에게 map을 전달해줍니다.
  //생성자의 이름은 클래스의 이름을 따릅니다.
  factory Phrase1.fromJson(Map<String, dynamic> json) => Phrase1(
        id: json["id"],
        description: json["description"],
        name: json["name"],
      );

  //toJson은 클래스가 JSON 인코딩의 지원을 선언하는 규칙입니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "name": name,
      };
}

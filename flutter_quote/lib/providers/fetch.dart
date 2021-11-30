import 'dart:collection';
import 'package:flutter_quote/models/models.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Phrase1>> fetchPost() async {
  var url = Uri.parse("http://10.0.2.2:8000/phrase1");
  final response = await http.get(url);

  List<Phrase1> _phrase1 = [];
  // UnmodifiableListView<Phrase1> get allPhrase1 => UnmodifiableListView(_phrase1);

  if (response.statusCode == 200) {
    // 만약 서버가 OK 응답을 반환하면, JSON을 파싱합니다.
    var dataList = jsonDecode(utf8.decode(response.bodyBytes)) as List;
    _phrase1 = dataList.map<Phrase1>((json) => Phrase1.fromJson(json)).toList();
    return _phrase1;
    // return Phrase1.fromJson(json.decode(response.body));
  } else {
    // 만약 응답이 OK가 아니면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

import 'dart:convert';
import 'package:flutter_quote/models/models.dart';

List<Phrase1> parsePhrase1(String resposeBody) {
  final parsed = json.decode(resposeBody).cast<Map<String, dynamic>>();
  //parsed된 json으로부터 각각을 Phrase1모델로 변환하여 이를 리스트로 만들고 리턴해주는것
  return parsed.map<Phrase1>((json) => Phrase1.fromJson(json)).toList();
}

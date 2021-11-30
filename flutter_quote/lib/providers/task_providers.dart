import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class QuotesProvider extends ChangeNotifier {
  QuotesProvider() {
    this.fetchQuotes();
  }

  List<Phrase1> _phrase1 = [];
  UnmodifiableListView<Phrase1> get allPhrase1 =>
      UnmodifiableListView(_phrase1);

  fetchQuotes() async {
    var url = Uri.parse("http://10.0.2.2:8000/phrase1");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var dataList = jsonDecode(utf8.decode(response.bodyBytes)) as List;
      _phrase1 =
          dataList.map<Phrase1>((json) => Phrase1.fromJson(json)).toList();
      notifyListeners();
    }
  }
}

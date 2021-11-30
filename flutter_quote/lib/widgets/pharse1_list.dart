import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'package:flutter_quote/widgets/phrase1_list_items.dart';

class Phrase1List extends StatelessWidget {
  final List<Phrase1> phrases1;
  Phrase1List({required this.phrases1});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenPhrases1(),
    );
  }

  List<Widget> getChildrenPhrases1() {
    return phrases1
        .map((phrase1) => Phrase1ListItem(phrase1: phrase1))
        .toList();
  }
}

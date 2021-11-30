import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';

class Phrase1ListItem extends StatelessWidget {
  final Phrase1 phrase1;
  Phrase1ListItem({required this.phrase1});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phrase1.description),
    );
  }
}

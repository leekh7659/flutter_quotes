import 'package:flutter/material.dart';
import 'package:flutter_quote/providers/task_providers.dart';
import 'package:flutter_quote/widgets/pharse1_list.dart';
import 'package:provider/provider.dart';

class Phrase1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('위인 명언집'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<QuotesProvider>(builder: (context, value, child) {
              return Phrase1List(phrases1: value.allPhrase1);
            }),
          ),
        ],
      ),
    );
  }
}

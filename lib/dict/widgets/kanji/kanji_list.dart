import 'package:flutter/material.dart';
import 'package:dacn/dict/models/kanji.dart';
import 'package:dacn/dict/widgets/kanji/kanji_item.dart';

class KanjiList extends StatelessWidget {
  final List<Kanji> kanji;

  KanjiList(this.kanji);

  @override
  Widget build(BuildContext context) {
    var count = kanji == null ? 0 : kanji.length;

    return Container(
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Divider(height: 1.0),
          itemCount: count,
          itemBuilder: (context, index) {
            return FlatButton(
              padding: EdgeInsets.all(16.0),
              child: KanjiItem(kanji[index]),
              onPressed: () {
                // Repository.get().setVisitedKanji(kanji[index].literal);
              },
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

class ItemVerse extends StatelessWidget {
  String text;
  int index;

  ItemVerse(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          '$text {$index}',
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

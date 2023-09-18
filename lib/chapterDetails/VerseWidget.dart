import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String title;
  int index;

  VerseWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: Text(
          '$title [$index]',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ));
  }
}

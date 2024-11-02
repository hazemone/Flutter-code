import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String longString = List<String>.generate(10, (int i) => 'CET373-Mobile Technologies').join(' ');
    return Container(
      child: Text(longString),
    );
  }
}
import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child:  Text(
        "I am widget 1",
        style: Theme.of(context).textTheme.headlineSmall,
      )),
    );
  }
}

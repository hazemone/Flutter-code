import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const BoxFit fit = BoxFit.scaleDown;
    return Row(
      children: <Widget>[
        Image.asset(
          'images/UoSL.png',
        ),
        Container(
          height: 250,
          width: 150,
          decoration:
              BoxDecoration(border: Border.all(width: 3.0), color: Colors.red),
          margin: const EdgeInsets.all(5),
          child: Image.asset(
            'images/UoSL.png',
            fit: BoxFit.contain,
          ),
        ),
        Container(
          height: 150,
          width: 250,
          decoration:
              BoxDecoration(border: Border.all(width: 3.0), color: Colors.red),
          margin: const EdgeInsets.all(5),
          child: Image.asset(
            'images/UoSL.png',
            fit: fit,
          ),
        ),
      ],
    );
  }
}

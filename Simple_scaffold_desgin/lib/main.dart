import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("University of Sunderland"),
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu),
        ),
        body: Center( 
          child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.all(25),
          child: Text("Hazem Eissa", style: TextStyle(color: Colors.white)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () => {},
        ),
      ),
    );
  }
}
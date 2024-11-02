import 'package:flutter/material.dart';
import 'IconsDemo.dart';
import 'ImagesDemo.dart';
//import 'ProperForm.dart';
//import 'SimplestForm.dart';
import 'TextDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CET373 - Mobile Technologies',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScene(),
    );
  }
}

class HomeScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Cross-Platform for CET373'),
        ),
        body: TabBarView(
          children: <Widget>[
            TextDemo(),
            IconsDemo(),
            ImagesDemo(),
           // SimplestForm(),
           // ProperForm(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Theme.of(context).colorScheme.primary,
          child: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Text Ex'),
              ),
              Tab(
                child:  Text('Icons Ex'),
              ),
              Tab(
                child:  Text('Images Ex'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



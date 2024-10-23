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
          flexibleSpace: Image.network('https://w7.pngwing.com/pngs/863/158/png-transparent-national-glass-centre-university-of-sunderland-cyprus-international-university-student-ksa-text-people-logo.png')
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
          child: Text("CET373 - Mobile Technologies", style: TextStyle(color: Colors.white, height: 8, fontSize: 17), textAlign: TextAlign.center,),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () => {},
        ),
        /*drawer: Drawer(
          child: ListView(),
        ),*/
      ),
    );
  }

      // This part is desgined to show a table for salesman, I comment it to separate the top desgin from this one.

 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("University of Sunderland"),
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu),
          flexibleSpace: Image.network('https://w7.pngwing.com/pngs/863/158/png-transparent-national-glass-centre-university-of-sunderland-cyprus-international-university-student-ksa-text-people-logo.png')
        ),
      body: Table(
      children: <TableRow>[
        TableRow(children: <Widget>[
          Text('Salesman', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('jan', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('feb', style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
        TableRow(children: <Widget>[
          Text('Ahmed'),
          Text('2050'),
          Text('1949'),
      ]),
      TableRow(children: <Widget>[
          Text('Omar'),
          Text('10544'),
          Text('5042'),
      ]),
      ])
      )
    );
  }*/
}
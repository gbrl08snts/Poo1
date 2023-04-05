import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontFamily: 'Montserrat'),
          headline6: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
          button: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Meu app")),
        body: Center(
            child: Column(children: [
          Text("Apenas começando...",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
          Text("No meio...",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
          Text("Terminando...",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red))
        ])),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ));

  runApp(app);
}


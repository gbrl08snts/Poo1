import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange), //Questão 1;
      home: Scaffold(
        appBar: AppBar(title: Text("Meu app")),
        body: Center(
            child: Column(children: [
          Text( //Questão 2;
            "Apenas começando...",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text( //Questão 2;
            "No meio...",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text( //Questão 2;
            "Terminando...",
            style: TextStyle(
              color:Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
        bottomNavigationBar: Text("Botão 1"),
      ));

  runApp(app);
}

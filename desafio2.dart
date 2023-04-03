import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu App'),
          backgroundColor: Colors.deepOrange, //Questão 1;
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                //Questão 2;
                "Apenas começando...",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                //Questão 2;
                "No meio...",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                //Questão 2;
                "Terminando...",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          //Questão 3;
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Botão 1'),
            Text('Botão 2'),
            Text('Botão 3'),
          ],
        ),
      ),
    );
  }
}

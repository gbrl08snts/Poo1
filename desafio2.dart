import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text("Meu app")),
        body: Center(
            child: Column(children: [
          Text(
            "Apenas começando...",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Text(
            "No meio, mas agora em negrito!",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            "Terminando...",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          )
        ])),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Página inicial",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Buscar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
            ),
          ],
        ),
      ));

  runApp(app);
}

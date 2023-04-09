import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text("Cervejas")),
        body: Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Nome')),
              DataColumn(label: Text('Estilo')),
              DataColumn(label: Text('IBU')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('La Fin Du Monde')),
                DataCell(Text('Bock')),
                DataCell(Text('65')),
              ]),
              DataRow(cells: [
                DataCell(Text('Sapporo Premium')),
                DataCell(Text('Sour Ale')),
                DataCell(Text('54')),
              ]),
              DataRow(cells: [
                DataCell(Text('Duvel')),
                DataCell(Text('Pilsner')),
                DataCell(Text('82')),
              ]),
              DataRow(cells: [
                DataCell(Text('Heineken')),
                DataCell(Text('Lager')),
                DataCell(Text('44')),
              ]),
              DataRow(cells: [
                DataCell(Text("Guinness Draught")),
                DataCell(Text("Stout")),
                DataCell(Text("45")),
              ]),
              DataRow(cells: [
                DataCell(Text("Hoegaarden")),
                DataCell(Text("Witbier")),
                DataCell(Text("15")),
              ]),
              DataRow(cells: [
                DataCell(Text("Paulaner Hefe-Weissbier Naturtrüb")),
                DataCell(Text("Weissbier")),
                DataCell(Text("12")),
              ]),
              DataRow(cells: [
                DataCell(Text("Chimay Blue")),
                DataCell(Text("Belgian Strong Dark Ale")),
                DataCell(Text("36")),
              ]),
              DataRow(cells: [
                DataCell(Text("Tripel Karmeliet")),
                DataCell(Text("Belgian Tripel")),
                DataCell(Text("23")),
              ]),
              DataRow(cells: [
                DataCell(Text("Rochefort 10")),
                DataCell(Text("Belgian Quadrupel")),
                DataCell(Text("29")),
              ]),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.green,
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
      ),
    ),
  );
}

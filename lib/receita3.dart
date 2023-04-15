import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  final List<Icon> icons;

  const NewNavBar({required this.icons});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      items: List.generate(
        icons.length,
        (index) => BottomNavigationBarItem(
          label: '',
          icon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icons[index],
              SizedBox(height: 5),
              Text(
                _getTextForIndex(index),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getTextForIndex(int index) {
    switch (index) {
      case 0:
        return 'Café';
      case 1:
        return 'Cervejas';
      case 2:
        return 'Nações';
      default:
        return '';
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dicas',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'La Fin Du Monde - Bock - 65 ibu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sapporo Premiume - Sour Ale - 54 ibu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Duvel - Pilsner - 82 ibu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NewNavBar(
          icons: [
            Icon(Icons.coffee_outlined),
            Icon(Icons.local_drink_outlined),
            Icon(Icons.flag_outlined),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}


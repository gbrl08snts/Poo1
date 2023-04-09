import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(bodyText2: TextStyle(fontFamily: 'Montserrat')),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Meu App")),
        body: Center(
          child: Column(
            children: [
              _buildImageWithLoading(),
              SizedBox(height: 20),
              Text(
                "Apenas começando...",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              Text(
                "No meio...",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Text(
                "Terminando...",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
        ),
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
      ),
    ),
  );
}

Widget _buildImageWithLoading() {
  return Stack(
    alignment: Alignment.center,
    children: [
      CircularProgressIndicator(),
      Opacity(
        opacity: 0,
        child: Image.network(
          'https://picsum.photos/200',
          width: 200,
          height: 200,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return CircularProgressIndicator();
          },
        ),
      ),
      Image.network(
        'https://picsum.photos/200',
        width: 200,
        height: 200,
        frameBuilder: (BuildContext context, Widget child, int? frame,
            bool? wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded == true) {
            return child;
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: frame == null ? 0 : 1,
            child: child,
          );
        },
      ),
    ],
  );
}



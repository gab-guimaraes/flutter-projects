 import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Scooby App 3'),
          backgroundColor: Colors.blueGrey[900],
        ),
        //body: Center(child: Image.network('https://picsum.photos/250?image=9')),
        body: Center(child: Image(
            image: AssetImage('images/scooby-doo.jpg')
        ),
      ),
      ),
      ),
  );
}



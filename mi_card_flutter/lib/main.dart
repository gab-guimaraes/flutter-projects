
import 'package:flutter/material.dart';
void main() {
    runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/shaggy.png'),
              ),
              Text(
                'Salsicha',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Pacifico',
                )
              ),
              Text(
                  'MISTÉRIO S.A',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontFamily: 'SourceSans',
                    letterSpacing: 1.0
                  )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.teal.shade900),
                      Text('+55 (11) 98938-6666', style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSans',
                        fontSize: 18,
                      ))
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.teal.shade900),
                      Text('salsicha@misterio.com', style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSans',
                        fontSize: 16,
                      ))
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


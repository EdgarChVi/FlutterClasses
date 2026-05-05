import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                backgroundImage: AssetImage("images/coal.png"),
                radius: 50.0,
                backgroundColor: Colors.white30,
              ),
              Text(
                "Edgar Chaves",
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "Source Sans",
                  color: Colors.teal[200],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(color: Colors.teal[200]),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone_iphone, color: Colors.teal[900]),
                  title: Text(
                    "+506 8519-1284",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: "Source Sans 3",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal[900]),
                  title: Text(
                    "edguitora@hotmail.com",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: "Source Sans 3",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

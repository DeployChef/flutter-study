import 'package:flutter/material.dart';

void main() {
  runApp(FlutterStudyApp());
}

class FlutterStudyApp extends StatelessWidget {
  const FlutterStudyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter first app",
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("App bar title"),
          centerTitle: true,
        ),
        body: Text(
          "Hello world",
          style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("+"),
          onPressed: null,
        ),
      ),
    );
  }
}

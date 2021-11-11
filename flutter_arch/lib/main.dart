import 'package:flutter_arch/presentation/view/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'di.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: DI.getInstance().init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MyHomePage(title: 'Flutter Demo Home Page');
          }else{
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
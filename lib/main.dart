import 'package:flutter/material.dart';
import 'package:calculator/calculadora.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.white, //
      ),
      home: const HomePage(),
    );
  }
}


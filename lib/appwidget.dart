import 'package:flutter/material.dart';
import 'package:calculator/view/calculadorapage.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.white, //
      ),
      home: const CalculatorPage(),
    );
  }
}


import 'package:calculator/src/features/components/keyboard.dart';
import 'package:flutter/material.dart';
//components
import '../components/display.dart';
//models
import 'package:calculator/src/shared/model/math_calc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MathCalc controller = MathCalc();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Display(),
            Keyboard(),
          ],
        ),
      ),
    );
  }
}

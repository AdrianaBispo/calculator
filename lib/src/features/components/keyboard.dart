import 'package:flutter/material.dart';
//componente
import 'first_row.dart';
import 'second_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        FirstRow(),
        SecondRow(),
      ],
    );
  }
}

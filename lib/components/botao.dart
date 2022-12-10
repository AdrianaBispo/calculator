import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final double fontsize;
  final Color textcolor;
  final Color backgroundColor;
  final String value;
  final void Function()? pressed;

  const Botao({Key? key, 
    this.fontsize = 27.0,
    this.textcolor = Colors.white,
    this.backgroundColor = const Color(0xff2c0033),
    required this.value,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextButton(
        child: Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w300, //thin
            fontSize: fontsize, 
            color: textcolor,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: pressed,
      ),
    );
  }
}

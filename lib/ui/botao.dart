import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  double fontsize;
  Color textcolor;
  Color backgroundColor;
  String value;
  void Function()? pressed;

  Botao({
    this.fontsize = 27.0,
    this.textcolor = const Color(0xff242424),
    this.backgroundColor = Colors.white,
    required this.value,
    required this.pressed,
  });

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextButton(
        child: Text(
          widget.value,
          style: TextStyle(
            fontWeight: FontWeight.w300, //thin
            fontSize: widget.fontsize, //32
            color: widget.textcolor,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          //side: const BorderSide(color: Color /*(0xfff8f8ff)*/, width: 0.5),
        ),
        onPressed: widget.pressed,
      ),
    );
  }
}

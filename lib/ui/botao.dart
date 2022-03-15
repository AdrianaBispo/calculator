import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  final double fontsize;
  final Color textcolor;
  final Color backgroundColor;
  final String value;
  void Function()? pressed;

  Botao({
    this.fontsize = 27.0,
    this.textcolor = Colors.white,
    this.backgroundColor = const Color(0xff2c0033),
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
            fontSize: widget.fontsize, 
            color: widget.textcolor,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: widget.pressed,
      ),
    );
  }
}

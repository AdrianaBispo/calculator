import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//bloc
import '../bloc/calculadora_bloc.dart';
//utils
import '../../shared/utils/app_color.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) => Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        height: MediaQuery.of(context).size.height * .3, // 1/3
        decoration: BoxDecoration(
          color: AppColor.instance.primary,
          border: Border(
            bottom: BorderSide(
              width: 0.7,
              color: AppColor.instance.primary,
            ),
          ),
        ),
        child: Text(
          state.userInput,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

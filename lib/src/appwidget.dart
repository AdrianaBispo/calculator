import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//bloc - controller
import 'features/bloc/calculadora_bloc.dart';
//view
import 'features/view/calculadorapage.dart';
//utils
import 'shared/utils/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculadoraBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: AppTheme.theme,
        home: const CalculatorPage(),
      ),
    );
  }
}

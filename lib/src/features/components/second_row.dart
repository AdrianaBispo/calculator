import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//controller
import '../bloc/calculadora_bloc.dart';
//component
import 'botao.dart';
//utils
import '../../shared/utils/app_color.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) {
        return 
          //Line 4
           Row(
            children: [
              Botao(
                value: '.',
                textcolor: AppColor.instance.secondary,
                pressed: () => context.read<CalculadoraBloc>().add(
                      OperatorPressed(
                        operator: '.',
                      ),
                    ),
              ),
              Botao(
                value: '0',
                pressed: () => context.read<CalculadoraBloc>().add(
                      NumberPressed(
                        number: '0',
                      ),
                    ),
              ),
              Botao(
                value: '+',
                textcolor: AppColor.instance.secondary,
                pressed: () => context.read<CalculadoraBloc>().add(
                      OperatorPressed(
                        operator: '-',
                      ),
                    ),
              ),
              Botao(
                fontsize: 32.0,
                textcolor: AppColor.instance.white,
                backgroundColor: AppColor.instance.secondary,
                value: '=',
                pressed: () => context.read<CalculadoraBloc>().add(
                      CalculadoraResult(),
                    ),
              ),
            ],
        );
      },
    );
  }
}

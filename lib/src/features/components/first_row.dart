import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//controller
import '../bloc/calculadora_bloc.dart';
//component
import 'botao.dart';
//utils
import '../../shared/utils/app_color.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    //Line 1
                    width: MediaQuery.of(context).size.width * .75,
                    //Line 1
                    child: Row(
                      children: <Widget>[
                        Botao(
                          value: '9',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(number: '9'),
                              ),
                        ),
                        Botao(
                          value: '8',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '8',
                                ),
                              ),
                        ),
                        Botao(
                          value: '7',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '7',
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    //line 2
                    width: MediaQuery.of(context).size.width * .75,
                    //Line 1
                    child: Row(
                      children: <Widget>[
                        Botao(
                          value: '4',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '4',
                                ),
                              ),
                        ),
                        Botao(
                          value: '5',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '5',
                                ),
                              ),
                        ),
                        Botao(
                          value: '6',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '6',
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    //line 3
                    width: MediaQuery.of(context).size.width * .75,
                    //Line 1
                    child: Row(
                      children: <Widget>[
                        Botao(
                          value: '3',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '3',
                                ),
                              ),
                        ),
                        Botao(
                          value: '2',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '2',
                                ),
                              ),
                        ),
                        Botao(
                          value: '1',
                          pressed: () => context.read<CalculadoraBloc>().add(
                                NumberPressed(
                                  number: '1',
                                ),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .25,
                height: 80 * 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Botao(
                      value: 'C',
                      pressed: () => context
                          .read<CalculadoraBloc>()
                          .add(ClearCalculadora()),
                    ),
                    Botao(
                      value: '/',
                      textcolor: AppColor.instance.secondary,
                      pressed: () => context.read<CalculadoraBloc>().add(
                            OperatorPressed(
                              operator: '/',
                            ),
                          ),
                    ),
                    Botao(
                      value: 'x',
                      textcolor: AppColor.instance.secondary,
                      pressed: () => context.read<CalculadoraBloc>().add(
                            OperatorPressed(
                              operator: 'x',
                            ),
                          ),
                    ),
                    Botao(
                      value: '-',
                      textcolor: AppColor.instance.secondary,
                      pressed: () => context.read<CalculadoraBloc>().add(
                            OperatorPressed(
                              operator: '-',
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

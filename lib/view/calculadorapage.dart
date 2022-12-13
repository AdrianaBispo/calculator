import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculadora_bloc.dart';
//components
import '../components/botao.dart';
//controller
import '../controller/calculadora_controller.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculadoraBloc(),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '0';
  CalculatorController controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color(0xff2c0033),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            BlocBuilder<CalculadoraBloc, CalculadoraState>(
              builder: (context, state) => Container(
                alignment: Alignment.bottomRight,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                height: size.height * .3, // 1/3
                decoration: const BoxDecoration(
                  color: Color(0xff2c0033),
                  border: Border(
                    bottom: BorderSide(
                      width: 0.7,
                      color: Color(0xff2c0033),
                    ),
                  ),
                ),
                child: Text(
                  state.userInput,
                  style: const TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            //teclado
            BlocBuilder<CalculadoraBloc, CalculadoraState>(
              builder: (context, state) => Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            //Line 1
                            width: size.width * .75,
                            //Line 1
                            child: Row(
                              children: [
                                Expanded(
                                  child: Botao(
                                    value: '9',
                                    pressed: () => //print('9'),
                                        context
                                            .read<CalculadoraBloc>()
                                            .add(NumberPressed(number: '9')),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '8',
                                    pressed: () => context
                                        .read<CalculadoraBloc>()
                                        .add(NumberPressed(
                                          number: '8',
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '7',
                                    pressed: () => context
                                        .read<CalculadoraBloc>()
                                        .add(NumberPressed(
                                          number: '7',
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //line 2
                            width: size.width * .75,
                            //Line 1
                            child: Row(
                              children: [
                                Expanded(
                                  child: Botao(
                                    value: '4',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '4',
                                              ),
                                            ),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '5',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '5',
                                              ),
                                            ),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '6',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '6',
                                              ),
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            //line 3
                            width: size.width * .75,
                            //Line 1
                            child: Row(
                              children: [
                                Expanded(
                                  child: Botao(
                                    value: '3',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '3',
                                              ),
                                            ),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '2',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '2',
                                              ),
                                            ),
                                  ),
                                ),
                                Expanded(
                                  child: Botao(
                                    value: '1',
                                    pressed: () =>
                                        context.read<CalculadoraBloc>().add(
                                              NumberPressed(
                                                number: '1',
                                              ),
                                            ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * .25,
                        height: 80 * 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Botao(
                                  value: 'C',
                                  pressed: () => context
                                      .read<CalculadoraBloc>()
                                      .add(ClearCalculadora()),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '/',
                                  textcolor: const Color(0xfffecc45),
                                  pressed: () =>
                                      context.read<CalculadoraBloc>().add(
                                            OperatorPressed(
                                              operator: '/',
                                            ),
                                          ),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: 'x',
                                  textcolor: const Color(0xfffecc45),
                                  pressed: () =>
                                      context.read<CalculadoraBloc>().add(
                                            OperatorPressed(
                                              operator: 'x',
                                            ),
                                          ),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '-',
                                  textcolor: const Color(0xfffecc45),
                                  pressed: () =>
                                      context.read<CalculadoraBloc>().add(
                                            OperatorPressed(
                                              operator: '-',
                                            ),
                                          ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width,
                        //Line 4
                        child: Row(
                          children: [
                            Expanded(
                              child: Botao(
                                value: '.',
                                textcolor: const Color(0xfffecc45),
                                pressed: () =>
                                    context.read<CalculadoraBloc>().add(
                                          OperatorPressed(
                                            operator: '.',
                                          ),
                                        ),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                value: '0',
                                pressed: () =>
                                    context.read<CalculadoraBloc>().add(
                                          NumberPressed(
                                            number: '0',
                                          ),
                                        ),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                value: '+',
                                textcolor: const Color(0xfffecc45),
                                pressed: () =>
                                    context.read<CalculadoraBloc>().add(
                                          OperatorPressed(
                                            operator: '-',
                                          ),
                                        ),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                fontsize: 32.0,
                                textcolor: Colors.white,
                                backgroundColor: const Color(0xfffecc45),
                                value: '=',
                                pressed: () =>
                                    context.read<CalculadoraBloc>().add(
                                          CalculadoraResult(),
                                        ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

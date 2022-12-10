import 'package:flutter/material.dart';

//components
import '../components/botao.dart';

//controller
import '../controller/calculadora_controller.dart';

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
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                userInput,
                style: const TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),

            //teclado
            Column(
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
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                        valor: '9', userInput: userInput);
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '8',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                        valor: '8', userInput: userInput);
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '7',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                        valor: '7', userInput: userInput);
                                  }),
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
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '4',
                                      userInput: userInput,
                                    );
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '5',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '5',
                                      userInput: userInput,
                                    );
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '6',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '6',
                                      userInput: userInput,
                                    );
                                  }),
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
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '3',
                                      userInput: userInput,
                                    );
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '2',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '2',
                                      userInput: userInput,
                                    );
                                  }),
                                ),
                              ),
                              Expanded(
                                child: Botao(
                                  value: '1',
                                  pressed: () => setState(() {
                                    userInput = controller.incremented(
                                      valor: '1',
                                      userInput: userInput,
                                    );
                                  }),
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
                                pressed: () => setState(() {
                                  userInput = controller.ce(userInput: userInput);
                                }),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                value: '/',
                                textcolor: const Color(0xfffecc45),
                                pressed: () => setState(() {
                                  userInput = controller.incremented(
                                      valor: '/', userInput: userInput);
                                }),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                value: 'x',
                                textcolor: const Color(0xfffecc45),
                                pressed: () => setState(() {
                                  userInput = controller.incremented(
                                      valor: 'x', userInput: userInput);
                                }),
                              ),
                            ),
                            Expanded(
                              child: Botao(
                                value: '-',
                                textcolor: const Color(0xfffecc45),
                                pressed: () => setState(() {
                                  userInput = controller.incremented(
                                      valor: '-', userInput: userInput);
                                }),
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
                              pressed: () => setState(() {
                                userInput = controller.incremented(
                                    valor: '.', userInput: userInput);
                              }),
                            ),
                          ),
                          Expanded(
                            child: Botao(
                              value: '0',
                              pressed: () => setState(() {
                                userInput = controller.incremented(
                                  valor: '0',
                                  userInput: userInput,
                                );
                              }),
                            ),
                          ),
                          Expanded(
                            child: Botao(
                              value: '+',
                              textcolor: const Color(0xfffecc45),
                              pressed: () => setState(() {
                                userInput = controller.incremented(
                                    valor: '+', userInput: userInput);
                              }),
                            ),
                          ),
                          Expanded(
                            child: Botao(
                              fontsize: 32.0,
                              textcolor: Colors.white,
                              backgroundColor: const Color(0xfffecc45),
                              value: '=',
                              pressed: () => setState(() {
                                userInput = controller.equal(userInput: userInput);
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:developer';


class CalculatorController {
  
  String operation = '';
  
  String incremented({required String valor, required String userInput}) {
    if (userInput[0] == '0' && userInput.length == 1) {
      //  pega o primeiro numero do usuario for 0
      log('length == 1');

      userInput = valor;
      return userInput; //funciona normalmente

    } else if (valor.contains(RegExp(r'[\x\-\+/]'))) {
      // caso tenha alguma operação matematica
      //se contem x - + /

      operation += valor;
      log('operation: $operation');

      userInput += valor;

      if (operation.length >= 2) {
        //se tiver mais de 2 valores
        log('Chamando o calc');
        userInput =
            equal(userInput: userInput); //recebe o que é retornado de equal
        return userInput;
      }
      log('UserInput: $userInput');

      return userInput;
    } else {
      return userInput += valor; //vai incremanentado os numeros
    }
  }

  ce({required String userInput}) {
    if (userInput.length <= 1) {
      //Se a variavel tiver menos do que 1 valor
      if (userInput.contains(RegExp(r'[\x\-\+/\=]')) && operation.length <= 1) {
        operation = '';
        return userInput = '0';
      }
      return userInput = '0';
    } else if (userInput.length >= 2) {
      // Se maior do que 2
      int inputValue = userInput.length - 1;
      if (userInput[userInput.length - 1].contains(RegExp(r'[\x\-\+/\=]')) &&
          operation.length >= 2) {
        log('operation length C ${operation.length}');
        operation = operation.substring(0, operation.length - 1);
        log('operation C ${operation}');

        return userInput = userInput.substring(0, inputValue);
      } else if (userInput[userInput.length - 1]
              .contains(RegExp(r'[\x\-\+/\=]')) &&
          operation.length <= 1) {
        operation = operation.substring(0, operation.length - 1);
        log('operation C <= 1 ${operation}');
        return userInput = userInput.substring(0, inputValue);
      }
      return userInput = userInput.substring(0, inputValue);
    } else {
      return userInput = userInput.substring(0);
    }
  }

  String equal({required String userInput}) {
    log('EQUAL');
    List finalInput =
        userInput.replaceAll('x', '*').split(RegExp(r'[/\*\-\+\=]'));

    if (finalInput.length >= 2 && finalInput[1] != '') {
      //se tiver mais de uma casa e a segunda casa for diferente de ''

      return _calc(
          operacao: operation[0].replaceAll('x', '*'),
          valor1: finalInput[0],
          valor2: finalInput[1]);
    } else if (finalInput.length == 1) {
      //se o tamanho for igual a 1

      return finalInput[0]; //resultado.toString();
    } else {
      return '0';
    }
  }//equal

  String _calc(
      {required String operacao,
      required String valor1,
      required String valor2}) {
    log('_calc');
    double resultado = 0;

    final int operationLength = operation.length;

    operation = operation[operation.length - 1];

    log(operation);
    //calcular.addAll(valor);
    log('Operações que serão calculadas $operacao');

    switch (operacao) {
      case '+':
        resultado = double.parse(valor1) + double.parse(valor2);
        break;

      case '-':
        resultado = double.parse(valor1) - double.parse(valor2);
        break;
      case '/':
        resultado = double.parse(valor1) / double.parse(valor2);
        break;
      case '*':
        resultado = double.parse(valor1) * double.parse(valor2);
        break;
    }
    
    if (operationLength >= 2){
      return _arredondar(resultado: resultado.toString()) + operation;
    }else {
     operation = '';
      
      return _arredondar(resultado: resultado.toString());
    }
    
  } //_calc


  String _arredondar({required String resultado}) {
    String decimalParte = resultado.split('.')[1];

    if (decimalParte == '0') {
      //Se o ultimo valor do double for 0
      //return ele como int
      resultado = double.parse(resultado).toInt().toString();
      return resultado;
    } else if (decimalParte.length < 4) {
      //se a parte decimal tiver menos de 4 digitos
      log(decimalParte);
      return resultado;
    } else {
      //retornar o resultado com 4 digitos finais
      log(double.parse(resultado).toStringAsPrecision(4));
      return double.parse(resultado).toStringAsPrecision(4);
    }
  }
}

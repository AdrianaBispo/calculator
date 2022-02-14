String operation = '';

incremented({required String valor, required String userInput}) {
  if (userInput[0] == '0' && userInput.length == 1) {
    //  pega o primeiro numero do usuario for 0
    print('length == 1');

    userInput = valor;
    return userInput; //funciona normalmente

  } else if (valor.contains(RegExp(r'[\x\-\+/]'))) {// caso tenha alguma operação matematica
    //se contem x - + /
    print('VALOR CONTAIN X / - + ');

    operation += valor;

    userInput += valor;
    //userInput += _operacoes(operador: operation, userInput: userInput); //recerbe o que é retornado em _operacoes
    //print(operation.length >= 1);

    print('OPERATION: ${operation}');
    print('USERINPUT DE INCREMENTED() ${userInput}');

    if (operation.length >= 2) {
      print('Chamando o calc');
      userInput = equal(userInput: userInput); //recebe o que é retornado de equal
      return userInput;
    }
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
      print('operation length C ${operation.length}');
      operation = operation.substring(0, operation.length - 1);
      print('operation C ${operation}');

      return userInput = userInput.substring(0, inputValue);
    } else if (userInput[userInput.length - 1]
            .contains(RegExp(r'[\x\-\+/\=]')) &&
        operation.length <= 1) {
      operation = operation.substring(0, operation.length - 1);
      print('operation C <= 1 ${operation}');
      return userInput = userInput.substring(0, inputValue);
    }
    return userInput = userInput.substring(0, inputValue);
  } else {
    return userInput = userInput.substring(0);
  }
}

String equal({required String userInput}) {
  print('EQUAL');
  List finalInput =
      userInput.replaceAll('x', '*').split(RegExp(r'[/\*\-\+\=]'));
  print(finalInput);
  double resultado = 0;
  print('FINALINPUT LENGHT ${finalInput.length}');
  //return resultado.toString();
  if (finalInput.length >= 2 && finalInput[1] != ''){
    //tiver apenas uma casa
    
  return _calc(operacao: operation[0].replaceAll('x', '*'), valor1: finalInput[0], valor2: finalInput[1]);
   
  } else if (finalInput.length == 1) {
     print('finalInput.length == 1');

    return finalInput[0]; //resultado.toString();
  } else{
     return '0';
  }
}

String _calc({required String operacao, required String valor1, required String valor2}) {
  print('_calc');
  double resultado = 0;
  
  operation = operation[operation.length - 1];
  print(operation);
  //calcular.addAll(valor);
  print('Operações que serão calculadas $operacao');

  switch(operacao){
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
  
  operation = operation[operation.length - 1];
  print(operation);
  return _arredondar(resultado: resultado.toString()) + operation;
} //_calc

String _calc2({required String operacao, required String valor1, required String valor2}) { //operation.lenght >= 2
  double resultado = 0;
  //calcular.addAll(valor);
  print('Operações que serão calculadas $operacao');

  switch(operacao){
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
  
  operation = operation[operation.length - 1];
  print(operation);
  return _arredondar(resultado: resultado.toString()) + operation;
} //_calc

String _arredondar({required String resultado}) {
  //arredonda o resultado
  operation = operation[operation.length - 1];
  String decimalParte = resultado.split('.')[1];

  if (decimalParte == '0') {
    //Se o ultimo valor do double for 0
    print(double.parse(resultado).toInt()); //return ele como int
    resultado = double.parse(resultado).toInt().toString();
    return resultado;
  } else if (decimalParte.length < 4) {
    //se a parte decimal tiver menos de 4 digitos
    print(decimalParte);
    return resultado;
  } else {
    //retornar o resultado com 4 digitos finais
    print(double.parse(resultado).toStringAsPrecision(4));
    return double.parse(resultado).toStringAsPrecision(4);
  }
}


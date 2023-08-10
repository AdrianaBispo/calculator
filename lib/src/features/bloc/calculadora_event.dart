part of 'calculadora_bloc.dart';

abstract class CalculadoraEvent{}


class NumberPressed extends CalculadoraEvent {
  final String number;

  NumberPressed({required this.number});
}

class OperatorPressed extends CalculadoraEvent {
  final String operator;

  OperatorPressed({required this.operator});

}

class CalculadoraResult extends CalculadoraEvent {
 
}

class ClearCalculadora extends CalculadoraEvent {
  
}
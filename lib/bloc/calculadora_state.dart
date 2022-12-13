part of 'calculadora_bloc.dart';

abstract class CalculadoraState extends Equatable {
  const CalculadoraState(this.userInput);
  final String userInput;

  @override
  List<Object> get props => [userInput];
}

class CalculadoraInitial extends CalculadoraState {
  const CalculadoraInitial(String userInput) : super(userInput);

  @override
  String toString() => 'Valor inicial ${userInput}';
}

class CalculadoraChanged extends CalculadoraState {
  
  const CalculadoraChanged(String userInput) : super(userInput);

}

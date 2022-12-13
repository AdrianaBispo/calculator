import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../controller/calculadora_controller.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  String _userInput = '0';

  // ignore: prefer_final_fields
  CalculatorController _calculatorController = CalculatorController();

  CalculadoraBloc() : super(const CalculadoraInitial('0')) {
    on<NumberPressed>(_number);
    on<OperatorPressed>(_operator);
    on<ClearCalculadora>(_clear);
    on<CalculadoraResult>(_result);
  }


  void _number(NumberPressed event, Emitter<CalculadoraState> emit) {
    //se CalculatorBloc recebe o NumberPressed evento
    
    _userInput = _calculatorController.incremented(
      userInput: _userInput,
      valor: event.number,
    );
    //emit para a ui o resultado
    emit(CalculadoraChanged(_userInput));
  }

  void _operator(OperatorPressed event, Emitter<CalculadoraState> emit) {
    _userInput = _calculatorController.incremented(
      userInput: _userInput,
      valor: event.operator,
    );
    emit(CalculadoraChanged(_userInput));
  }

  void _clear(ClearCalculadora event, Emitter<CalculadoraState> emit) {
    _userInput = _calculatorController.ce(
      userInput: _userInput,
    );

    emit(CalculadoraChanged(_userInput));
  }

  void _result(CalculadoraResult event, Emitter<CalculadoraState> emit) {
    _userInput = _calculatorController.equal(userInput: _userInput);
    emit(CalculadoraChanged(_userInput));
  }
}

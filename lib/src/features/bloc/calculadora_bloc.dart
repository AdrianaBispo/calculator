import 'dart:developer';
import '../../shared/model/math_calc.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  String _userInput = '0';

  final MathCalc _mathCalc = MathCalc();

  CalculadoraBloc() : super(const CalculadoraInitial('0')) {
    on<NumberPressed>(_number);
    on<OperatorPressed>(_operator);
    on<ClearCalculadora>(_clear);
    on<CalculadoraResult>(_result);
  }

  void _number(NumberPressed event, Emitter<CalculadoraState> emit) {
    _userInput = _mathCalc.incremented(
      userInput: _userInput,
      valor: event.number,
    );
    emit(CalculadoraChanged(_userInput));
  }

  void _operator(OperatorPressed event, Emitter<CalculadoraState> emit) {
    _userInput = _mathCalc.incremented(
      userInput: _userInput,
      valor: event.operator,
    );
    emit(CalculadoraChanged(_userInput));
  }

  void _clear(ClearCalculadora event, Emitter<CalculadoraState> emit) {
    _userInput = _mathCalc.ce(
      userInput: _userInput,
    );

    emit(CalculadoraChanged(_userInput));
  }

  void _result(CalculadoraResult event, Emitter<CalculadoraState> emit) {
    _userInput = _mathCalc.equal(userInput: _userInput);
    emit(CalculadoraChanged(_userInput));
  }
}

import 'package:bloc/bloc.dart';

part 'counter_state.dart';

// enum CounterEvent { increment, decrement }

abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

// class BlocCounter extends Bloc<CounterEvent, CounterState> {
//   BlocCounter() : super(CounterState(counterValue: 0));class BlocCounter extends Bloc<CounterEvent, int> {
//   CounterBloc() : super(0) {
//     on<Increment>((event, emit) => emit(state + 1));
//   }
// }
// }
class BlocCounter extends Bloc<CounterEvent, CounterState> {
  BlocCounter() : super(CounterState(counterValue: 0)) {
    on<Increment>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue + 1)));

    on<Decrement>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue - 1)));
  }
}

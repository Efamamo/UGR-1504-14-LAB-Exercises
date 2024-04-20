import 'package:bloc/bloc.dart';

class CounterState {
  final int counter;

  CounterState({required this.counter});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CounterState && other.counter == counter;
  }

  @override
  int get hashCode => counter;
}

// Define events
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      final newCounter = state.counter + 1;
      emit(CounterState(counter: newCounter));
    });

    on<DecrementCounterEvent>((event, emit) {
      final newCounter = state.counter - 1;
      emit(CounterState(counter: newCounter));
    });
  }
}

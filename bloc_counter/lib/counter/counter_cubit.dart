import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // constrctor get initial state
  CounterCubit(super.initialState);

  // increment
  void increment() => emit(state + 1);

  // decremenrt
  void decrement() => emit(state - 1);

  // on state change
  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    print(change);
  }
}

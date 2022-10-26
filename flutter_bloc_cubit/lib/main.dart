// import 'package:bloc/bloc.dart';

// void main() {
//   final cubit = CounterCubit(2);
//   cubit.increment();
//   print(cubit.state);
// }

// class CounterCubit extends Cubit<int> {
//   CounterCubit(int intialState) : super(intialState);
//   void increment() => emit(state + 1);
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/cubit/counter_cubit.dart';

void main() {
  runApp(myhomepage());
}

class myhomepage extends StatelessWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
   
      ),
    );
  }
}

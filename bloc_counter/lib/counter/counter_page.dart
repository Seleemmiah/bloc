import 'package:bloc_counter/counter/counter_cubit.dart';
import 'package:bloc_counter/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {

    // we are returning bloc provider
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          // show a pop up when state reaches 10
          if (state == 10){
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                content:  Text('You have reached 10'),
              )
              );
          }
        },
        child: CounterView(),
        ), 

        // counter view UI
    
    );
  }
}
import 'package:counter/bloc/counter_bloc_bloc.dart';
import 'package:counter/bloc/counter_bloc_event.dart';
import 'package:counter/bloc/counter_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBody extends StatelessWidget {
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data")),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is UpdateState) {
            return Center(
              child: InkWell(
                onTap: () {
                  context.read<CounterBloc>().add(CounterInc());
                },
                child: Text(
                  "Click me ${state.counter}",
                  style: TextStyle(fontSize: 40, color: Colors.amber),
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}

import 'package:counter_app/page/bloc/counter.bloc.dart';
import 'package:counter_app/page/bloc/counter.cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CounterBlocPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Counter"),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context,state){
          return Center(
            child: Text("Your counter value is : $state",
              style: Theme.of(context).textTheme.headline4,
            ),
          );
        },

      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              context.read<CounterBloc>().add(CounterEvent.INCREMENT);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              context.read<CounterBloc>().add(CounterEvent.DECREMENT);
            },
          ),
        ],
      ),

    );
  }
}

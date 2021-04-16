import 'package:counter_app/page/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    CounterState counterState = Provider.of<CounterState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Counter"),
      ),
      body: Consumer<CounterState>(
        builder: (context,counterState,child){
          return Center(
            child: Text("Your counter value is : ${counterState.counter}",
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
              counterState.increment();
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              counterState.decrement();
            },
          ),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';

class CounterStatePage extends StatefulWidget {

  @override
  _CounterStatePageState createState() => _CounterStatePageState();
}

class _CounterStatePageState extends State<CounterStatePage> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Counter"),
      ),
      body: Center(
        child: Text("Your counter value is : $counter",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                ++counter;
              });
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: (){
              setState(() {
                --counter;
              });
            },
          ),
        ],
      ),

    );
  }
}

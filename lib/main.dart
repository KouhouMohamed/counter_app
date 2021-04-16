import 'package:counter_app/page/bloc/counter.bloc.dart';
import 'package:counter_app/page/bloc/counter.cubit.dart';
import 'package:counter_app/page/bloc/counter.cubit.page.dart';
import 'package:counter_app/page/counter.stateFul.page.dart';
import 'package:counter_app/page/provider/counter.provider.page.dart';
import 'package:counter_app/page/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit()),
        BlocProvider(create: (context)=>CounterBloc()),
      ],
      child: MaterialApp(
        routes: {
          '/':(context)=>CounterCubitPage()
        },
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CounterState()),

      ],
      child: MaterialApp(
        routes: {
          '/':(context)=>CounterProviderPage()
        },
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
      ),
    );
  }
}

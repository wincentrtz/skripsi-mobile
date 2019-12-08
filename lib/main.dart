import 'package:belajar/blocs/bloc_manager.dart';
import 'package:belajar/blocs/user_bloc.dart';
import 'package:belajar/screens/home.dart';
import 'package:belajar/widgets/common/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<BlocManager>(
      data: BlocManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Belajar'),
          ),
          body: Home(),
        ),
      ),
    );
  }
}

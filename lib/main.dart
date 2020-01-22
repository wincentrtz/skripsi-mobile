import 'package:belajar/blocs/bloc_manager.dart';
import 'package:belajar/screens/ecg.dart';
import 'package:belajar/widgets/common/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      bloc: BlocManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Belajar'),
          ),
          body: Ecg(),
        ),
      ),
    );
  }
}

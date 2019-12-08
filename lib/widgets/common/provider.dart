import 'package:belajar/blocs/bloc_manager.dart';
import 'package:belajar/blocs/user_bloc.dart';
import 'package:flutter/cupertino.dart';

class Provider extends InheritedWidget {
  final BlocManager bloc;

  Provider({Key key, Widget child, this.bloc}) : super(key: key, child: child);

  static BlocManager of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}

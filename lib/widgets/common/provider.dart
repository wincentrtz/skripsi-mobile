import 'package:belajar/blocs/user_bloc.dart';
import 'package:flutter/cupertino.dart';

class Provider extends InheritedWidget {
  final UserBloc data;

  Provider({Key key, Widget child, this.data}) : super(key: key, child: child);

  static UserBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}

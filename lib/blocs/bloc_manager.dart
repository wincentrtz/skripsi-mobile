import 'package:belajar/blocs/user_bloc.dart';

class BlocManager {
  Map<dynamic, dynamic> manager = {};

  BlocManager() {
    register(UserBloc, UserBloc());
  }

  register(name, object) {
    manager[name] = object;
  }

  fetch(name) => manager[name];
}

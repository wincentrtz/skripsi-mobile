import 'package:belajar/blocs/user_bloc.dart';

class BlocManager {
  Map<dynamic, dynamic> manager = {};

  BlocManager() {
    register(UserBloc, userBloc);
  }

  register(name, object) {
    manager[name] = object;
  }

  fetch(name) => manager[name];
}

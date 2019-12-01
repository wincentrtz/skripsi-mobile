import 'package:belajar/models/user.dart';
import 'package:belajar/repositories/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc {
  final BehaviorSubject _userFetcher = BehaviorSubject<List<User>>();
  final UserRepository _repository = UserRepository();

  Observable<List<User>> get AllUser => _userFetcher.stream;

  fetchAllUsers() async {
    List<User> users = await _repository.fetchAllUsers();
    _userFetcher.sink.add(users);
  }

  dispose() {
    _userFetcher.close();
  }
}

final userBloc = UserBloc();

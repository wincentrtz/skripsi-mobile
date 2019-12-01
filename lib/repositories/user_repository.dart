import 'package:belajar/models/user.dart';
import 'package:belajar/services/user_service.dart';

class UserRepository {
  final userService = UserService();

  Future<List<User>> fetchAllUsers() => userService.fetchUserList();
}

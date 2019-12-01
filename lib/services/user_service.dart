import 'dart:convert';

import 'package:belajar/models/user.dart';
import 'package:http/http.dart';

class UserService {
  Future<List<User>> fetchUserList() async {
    Client client = Client();
    final response =
        await client.get("https://jsonplaceholder.typicode.com/users");
    if (response.statusCode == 200) {
      Iterable users = json.decode(response.body);
      List<User> _users = users.map((u) => User.fromJson(u)).toList();
      return _users;
    }
    throw Exception('Failed to load post');
  }
}

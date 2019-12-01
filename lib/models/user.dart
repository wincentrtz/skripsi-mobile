class User {
  String name;
  String email;

  User({
    this.email,
    this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      email: json["email"],
    );
  }

  String get getName => name;

  String get getEmail => email;
}

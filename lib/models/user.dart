const String userTable = 'user';

class UserFields {
  static const String username = 'username';
  static const String name = 'name';
  static final List<String> allFields = [username, name];
}

class User {
  final String username;
  String name;

  User({
    required this.username,
    required this.name,
  });

  Map<String, Object?> toJson() => {
        UserFields.username: username,
        UserFields.name: name,
      };

  static User fromJson(Map<String, Object?> json) => User(
      username: json[UserFields.username] as String,
      name: json[User] as String);
}

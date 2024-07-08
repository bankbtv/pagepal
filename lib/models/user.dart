class User {
  final int id;
  final String userEmail;
  final String userPassword;
  final String createDate;

  User(
      {required this.id,
      required this.userEmail,
      required this.userPassword,
      required this.createDate});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        userEmail: json["userEmail"],
        userPassword: json["userPassword"],
        createDate: json["createDate"]);
  }
}

class User {
  int id;
  String name;
  String email;
  String phone;
  User(
      {required this.id,
      required this.email,
      required this.name,
      required this.phone});
}

User convert(Map<String, dynamic> userInfo) {
  return User(
      email: userInfo["email"],
      id: userInfo["id"],
      name: userInfo["name"],
      phone: userInfo["phone"]);
}

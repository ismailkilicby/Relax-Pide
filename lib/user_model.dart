class Users {
  String? userID;
  String namesurname;
  String email;
  String phoneNumber;
  String password;

  Users({
    this.userID,
    required this.namesurname,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  // HomeOwner sınıfını Map'e dönüştürme
  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'namesurname': namesurname,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
    };
  }

  // Map'i HomeOwner sınıfına dönüştürme
  Users.fromMap(Map<String, dynamic> map)
      : userID = map['userID'],
        namesurname = map['namesurname'],
        email = map['email'],
        phoneNumber = map['phoneNumber'],
        password = map['password'];
}

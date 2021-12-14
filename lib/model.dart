import 'dart:ffi';

class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;

  //usermodel
  UserModel({
    this.uid,
    this.email,
    this.firstName,
    this.lastName,
  });

  // recieve datafrom the server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        firstName: map['firstName'],
        lastName: map['lastName']);
  }

  //sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}

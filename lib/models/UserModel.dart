// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int status;
  String message;
  User user;

  UserModel({
    this.status,
    this.message,
    this.user,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    status: json["status"],
    message: json["message"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "user": user.toJson(),
  };
}

class User {
  String idUser;
  String nameUser;
  String emailUser;
  String passwordUser;
  String imageUser;

  User({
    this.idUser,
    this.nameUser,
    this.emailUser,
    this.passwordUser,
    this.imageUser,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    idUser: json["id_user"],
    nameUser: json["name_user"],
    emailUser: json["email_user"],
    passwordUser: json["password_user"],
    imageUser: json["image_user"],
  );

  Map<String, dynamic> toJson() => {
    "id_user": idUser,
    "name_user": nameUser,
    "email_user": emailUser,
    "password_user": passwordUser,
    "image_user": imageUser,
  };
}

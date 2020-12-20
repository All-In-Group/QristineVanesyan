import 'dart:convert';

FirstModel FirstModelFromJson(String str) =>
    FirstModel.fromJson(json.decode(str));

String FirstModelToJson(FirstModel data) => json.encode(data.toJson());

class FirstModel {
  String login;
  String password;

  FirstModel({
    this.login,
    this.password,
  });

  factory FirstModel.fromJson(Map<String, dynamic> json) => FirstModel(
        login: json["login"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "password": password,
      };
}

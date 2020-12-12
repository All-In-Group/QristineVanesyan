import 'dart:convert';

ThirdModel ThirdModelFromJson(String str) =>
    ThirdModel.fromJson(json.decode(str));

String ThirdModelToJson(ThirdModel data) => json.encode(data.toJson());

class ThirdModel {
  String fname;
  String lname;

  ThirdModel({
    this.fname,
    this.lname,
  });git

  factory ThirdModel.fromJson(Map<String, dynamic> json) => ThirdModel(
    fname: json["fname"],
    lname: json["lname"],
  );

  Map<String, dynamic> toJson() => {
    "fname": fname,
    "lname": lname,
  };
}

import 'dart:convert';

SecondModel SecondModelFromJson(String str) =>
    SecondModel.fromJson(json.decode(str));

String SecondModelToJson(SecondModel data) => json.encode(data.toJson());

class SecondModel {
  String country;
  String city;

  SecondModel({
    this.country,
    this.city,
  });

  factory SecondModel.fromJson(Map<String, dynamic> json) => SecondModel(
    country: json["country"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "city": city,
  };
}

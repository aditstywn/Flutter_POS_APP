import 'dart:convert';

class AddDiscountRequestModel {
  final String name;
  final String description;
  final int value;
  final String type;
  final String status;
  final DateTime expiredDate;

  AddDiscountRequestModel({
    required this.name,
    required this.description,
    required this.value,
    required this.type,
    required this.status,
    required this.expiredDate,
  });

  factory AddDiscountRequestModel.fromJson(String str) =>
      AddDiscountRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddDiscountRequestModel.fromMap(Map<String, dynamic> json) =>
      AddDiscountRequestModel(
        name: json["name"],
        description: json["description"],
        value: json["value"],
        type: json["type"],
        status: json["status"],
        expiredDate: DateTime.parse(json["expired_date"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "value": value,
        "type": type,
        "status": status,
        "expired_date":
            "${expiredDate.year.toString().padLeft(4, '0')}-${expiredDate.month.toString().padLeft(2, '0')}-${expiredDate.day.toString().padLeft(2, '0')}",
      };
}

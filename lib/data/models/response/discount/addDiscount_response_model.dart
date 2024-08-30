import 'dart:convert';

class AddDiscountResponseModel {
  final String status;
  final Data data;

  AddDiscountResponseModel({
    required this.status,
    required this.data,
  });

  factory AddDiscountResponseModel.fromJson(String str) =>
      AddDiscountResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddDiscountResponseModel.fromMap(Map<String, dynamic> json) =>
      AddDiscountResponseModel(
        status: json["status"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data.toMap(),
      };
}

class Data {
  final String name;
  final String description;
  final int value;
  final String type;
  final String status;
  final DateTime expiredDate;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  Data({
    required this.name,
    required this.description,
    required this.value,
    required this.type,
    required this.status,
    required this.expiredDate,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        name: json["name"],
        description: json["description"],
        value: json["value"],
        type: json["type"],
        status: json["status"],
        expiredDate: DateTime.parse(json["expired_date"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "value": value,
        "type": type,
        "status": status,
        "expired_date":
            "${expiredDate.year.toString().padLeft(4, '0')}-${expiredDate.month.toString().padLeft(2, '0')}-${expiredDate.day.toString().padLeft(2, '0')}",
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}

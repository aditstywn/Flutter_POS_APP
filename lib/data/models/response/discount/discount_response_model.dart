import 'dart:convert';

class DiscountResponseModel {
  final String status;
  final List<Discount> data;

  DiscountResponseModel({
    required this.status,
    required this.data,
  });

  factory DiscountResponseModel.fromJson(String str) =>
      DiscountResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DiscountResponseModel.fromMap(Map<String, dynamic> json) =>
      DiscountResponseModel(
        status: json["status"],
        data: List<Discount>.from(json["data"].map((x) => Discount.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Discount {
  final int id;
  final String name;
  final String description;
  final String? type;
  final String value;
  final String? status;
  final DateTime? expiredDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Discount({
    required this.id,
    required this.name,
    required this.description,
    this.type,
    required this.value,
    this.status,
    this.expiredDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Discount.fromJson(String str) => Discount.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  // factory Discount.fromMap(Map<String, dynamic> json) => Discount(
  //       id: json["id"],
  //       name: json["name"],
  //       description: json["description"],
  //       type: json["type"],
  //       value: json["value"],
  //       status: json["status"],
  //       expiredDate: DateTime.parse(json["expired_date"]),
  //       createdAt: DateTime.parse(json["created_at"]),
  //       updatedAt: DateTime.parse(json["updated_at"]),
  //     );

  factory Discount.fromMap(Map<String, dynamic> json) => Discount(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
        value: json["value"],
        status: json["status"],
        expiredDate: json["expired_date"] != null
            ? DateTime.parse(json["expired_date"])
            : null, // Tambahkan pengecekan null di sini
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
        "value": value,
        "status": status,
        "expired_date":
            "${expiredDate?.year.toString().padLeft(4, '0')}-${expiredDate?.month.toString().padLeft(2, '0')}-${expiredDate?.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

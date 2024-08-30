import 'dart:convert';

class AddProductResponseModel {
  final bool success;
  final String message;
  final Data data;

  AddProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AddProductResponseModel.fromJson(String str) =>
      AddProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddProductResponseModel.fromMap(Map<String, dynamic> json) =>
      AddProductResponseModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data.toMap(),
      };
}

class Data {
  final String name;
  final String description;
  final String price;
  final String stock;
  final String categoryId;
  final String status;
  final String isFavorite;
  final String image;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  Data({
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.categoryId,
    required this.status,
    required this.isFavorite,
    required this.image,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        categoryId: json["category_id"],
        status: json["status"],
        isFavorite: json["is_favorite"],
        image: json["image"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "category_id": categoryId,
        "status": status,
        "is_favorite": isFavorite,
        "image": image,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}

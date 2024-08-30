import 'dart:convert';

class UpdateProductResponseModel {
  final bool success;
  final String message;
  final Data data;

  UpdateProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory UpdateProductResponseModel.fromJson(String str) =>
      UpdateProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateProductResponseModel.fromMap(Map<String, dynamic> json) =>
      UpdateProductResponseModel(
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
  final int id;
  final String categoryId;
  final String name;
  final String description;
  final String image;
  final String price;
  final String stock;
  final String status;
  final String isFavorite;
  final DateTime createdAt;
  final DateTime updatedAt;

  Data({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.stock,
    required this.status,
    required this.isFavorite,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        stock: json["stock"],
        status: json["status"],
        isFavorite: json["is_favorite"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "category_id": categoryId,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "stock": stock,
        "status": status,
        "is_favorite": isFavorite,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

import 'dart:convert';

class UpdateProductRequestModel {
  final String name;
  final String description;
  final String price;
  final String stock;
  final String categoryId;
  final String status;
  final String isFavorite;

  UpdateProductRequestModel({
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.categoryId,
    required this.status,
    required this.isFavorite,
  });

  factory UpdateProductRequestModel.fromJson(String str) =>
      UpdateProductRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateProductRequestModel.fromMap(Map<String, dynamic> json) =>
      UpdateProductRequestModel(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        categoryId: json["category_id"],
        status: json["status"],
        isFavorite: json["is_favorite"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "category_id": categoryId,
        "status": status,
        "is_favorite": isFavorite,
      };
}

import 'package:image_picker/image_picker.dart';

class AddProductRequest {
  final String name;
  final String description;
  final int price;
  final int stock;
  final String categoryId;
  final String status;
  final String isFavorite;
  final XFile image;

  AddProductRequest({
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.categoryId,
    required this.status,
    required this.isFavorite,
    required this.image,
  });

  Map<String, String> toMap() {
    return <String, String>{
      'name': name,
      'description': description,
      'price': price.toString(),
      'stock': stock.toString(),
      'category_id': categoryId,
      'status': status,
      'is_favorite': isFavorite,
    };
  }
}

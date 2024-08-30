// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import '../../../data/models/response/product/product_response_models.dart';

class ProductQuantity {
  final Product product;
  int quantity;
  ProductQuantity({
    required this.product,
    required this.quantity,
  });

  @override
  bool operator ==(covariant ProductQuantity other) {
    if (identical(this, other)) return true;

    return other.product == product && other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory ProductQuantity.fromMap(Map<String, dynamic> map) {
    return ProductQuantity(
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
      quantity: map['quantity'] as int,
    );
  }

  Map<String, dynamic> toLocalMap(int idOrder) {
    return <String, dynamic>{
      'id_order': idOrder,
      'id_product': product.id,
      'quantity': quantity,
      'price': product.price,
    };
  }

  factory ProductQuantity.fromLocalMap(Map<String, dynamic> map) {
    return ProductQuantity(
      product: Product.fromOrderMap(map),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductQuantity.fromJson(String source) =>
      ProductQuantity.fromMap(json.decode(source) as Map<String, dynamic>);
}

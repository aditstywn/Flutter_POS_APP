part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getProduct() = _GetProduct;
  const factory ProductEvent.addProduct(AddProductRequest addproduct) =
      _AddProduct;
  const factory ProductEvent.updateProduct(
      UpdateProductRequestModel updateProduct, int id) = _UpdateProduct;
}

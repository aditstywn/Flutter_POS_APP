part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.getProductSuccess(
      ProductsResponseModel productsResponseModel) = _GetProductSuccess;
  const factory ProductState.addProductSuccess(
      AddProductResponseModel product) = _AddProductSuccess;
  const factory ProductState.updateProductSuccess(
      UpdateProductResponseModel product) = _UpdateProductSuccess;
  const factory ProductState.error(String mesage) = _Error;
}

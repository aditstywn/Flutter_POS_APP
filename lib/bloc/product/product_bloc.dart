// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_pos_app/data/datasource/product/product_remote_datasource.dart';

import '../../data/models/request/product/add_product_request_model.dart';
import '../../data/models/request/product/update_product_request_model.dart';
import '../../data/models/response/product/add_product_response_model.dart';
import '../../data/models/response/product/product_response_models.dart';
import '../../data/models/response/product/update_product_response_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  ProductBloc(
    this.productRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetProduct>((event, emit) async {
      emit(const _Loading());

      final response = await productRemoteDatasource.getAllProduct();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          _GetProductSuccess(r),
        ),
      );
    });

    on<_AddProduct>((event, emit) async {
      emit(const _Loading());

      final response =
          await productRemoteDatasource.addProduct(event.addproduct);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_AddProductSuccess(r)),
      );
    });

    on<_UpdateProduct>((event, emit) async {
      emit(const _Loading());

      final response =
          await productRemoteDatasource.update(event.updateProduct, event.id);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_UpdateProductSuccess(r)),
      );
    });
  }
}

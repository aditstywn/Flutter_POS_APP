import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasource/product/product_local_datasource.dart';
import '../../data/models/response/product/product_response_models.dart';

part 'local_product_event.dart';
part 'local_product_state.dart';
part 'local_product_bloc.freezed.dart';

class LocalProductBloc extends Bloc<LocalProductEvent, LocalProductState> {
  final ProductLocalDatasource productLocalDatasource;

  LocalProductBloc(
    this.productLocalDatasource,
  ) : super(const _Initial()) {
    on<_GetLocalProduct>((event, emit) async {
      emit(const _Loading());

      final response = await productLocalDatasource.getProducts();

      emit(_GetLocalProductSuccess(response));
    });
  }
}

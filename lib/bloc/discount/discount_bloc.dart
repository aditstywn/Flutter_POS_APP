import 'package:bloc/bloc.dart';
import 'package:flutter_pos_app/data/models/request/discount/addDiscount_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasource/discount/discount_remote_datasource.dart';
import '../../data/models/response/discount/addDiscount_response_model.dart';
import '../../data/models/response/discount/discount_response_model.dart';

part 'discount_event.dart';
part 'discount_state.dart';
part 'discount_bloc.freezed.dart';

class DiscountBloc extends Bloc<DiscountEvent, DiscountState> {
  DiscountRemoteDatasource discountRemoteDatasource;
  DiscountBloc(
    this.discountRemoteDatasource,
  ) : super(const _Initial()) {
    on<_AddDiscount>(
      (event, emit) async {
        emit(const _Loading());

        final response = await discountRemoteDatasource
            .addDiscount(event.addDiscountRequestModel);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(
            _AddDiscountSuccess(r),
          ),
        );
      },
    );
    on<_GetDiscount>(
      (event, emit) async {
        emit(const _Loading());

        final response = await discountRemoteDatasource.getDiscount();

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(
            _GetDiscountSuccess(r.data),
          ),
        );
      },
    );
  }
}

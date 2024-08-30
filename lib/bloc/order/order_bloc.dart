// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_pos_app/data/datasource/order/order_remote_datasource.dart';

import '../../data/datasource/auth/auth_local_datasource.dart';
import '../../data/datasource/product/product_local_datasource.dart';
import '../../presentations/home/models/product_quantity.dart';
import '../../presentations/pesanan/models/order_model.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_Order>(
      (event, emit) async {
        emit(const _Loading());

        final subtotal = event.item.fold<int>(
            0,
            (previousValue, element) =>
                previousValue +
                element.product.price!.toIntegerFromText * element.quantity);

        final total =
            subtotal + event.tax + event.serviceCharge - event.discount;

        final totalItem = event.item.fold<int>(
            0, (previousValue, element) => previousValue + element.quantity);

        final userData = await AuthLocalDatasource().getAuthData();

        // save to local db
        final dataInput = OrderModel(
          paymentAmount: event.paymentAmount,
          subTotal: subtotal,
          tax: event.tax,
          discount: event.discount,
          serviceCharge: event.serviceCharge,
          total: total,
          paymentMethod: event.paymentMethod,
          totalItem: totalItem,
          idKasir: userData.user.id,
          namaKasir: userData.user.name,
          transactionTime: DateTime.now().toIso8601String(),
          isSync: 0,
          orderItems: event.item,
        );

        await ProductLocalDatasource.instance.saveOrder(dataInput);

        emit(
          _OrderSuccess(dataInput),
        );
      },
    );

    on<_SyncOrder>(
      (event, emit) async {
        emit(const _Loading());
        final dataOrderNotSync =
            await ProductLocalDatasource.instance.getOrderItemByIsNotSync();

        for (var order in dataOrderNotSync) {
          final orderItem = await ProductLocalDatasource.instance
              .getOrderItemByOrderId(order.id!);

          final newOrder = order.copyWith(orderItems: orderItem);

          final result = await orderRemoteDatasource.saveOrderServer(newOrder);

          if (result) {
            await ProductLocalDatasource.instance.updateOrderIsSync(order.id!);
          } else {
            emit(const _Error('Sync Order Gagal'));
          }
        }
        emit(const _SyncOrderSuccess());
      },
    );
  }
}

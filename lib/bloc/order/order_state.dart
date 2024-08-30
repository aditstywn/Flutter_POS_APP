part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.orderSuccess(OrderModel orderModel) = _OrderSuccess;
  const factory OrderState.syncOrderSuccess() = _SyncOrderSuccess;
  const factory OrderState.error(String message) = _Error;
}

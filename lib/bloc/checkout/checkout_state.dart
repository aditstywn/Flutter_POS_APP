part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.loading() = _Loading;
  const factory CheckoutState.checkoutSuccess(
    List<ProductQuantity> items,
    Discount? discount,
    double tax,
    int serviceCharge,
  ) = _CheckoutSuccess;
  const factory CheckoutState.error(String message) = _Error;
}

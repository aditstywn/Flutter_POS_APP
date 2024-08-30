part of 'discount_bloc.dart';

@freezed
class DiscountState with _$DiscountState {
  const factory DiscountState.initial() = _Initial;
  const factory DiscountState.loading() = _Loading;
  const factory DiscountState.addDiscountSuccess(
      AddDiscountResponseModel addDiscountResponseModel) = _AddDiscountSuccess;
  const factory DiscountState.getDiscountSuccess(List<Discount> discount) =
      _GetDiscountSuccess;
  const factory DiscountState.error(String message) = _Error;
}

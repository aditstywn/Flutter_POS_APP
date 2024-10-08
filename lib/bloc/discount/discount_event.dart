part of 'discount_bloc.dart';

@freezed
class DiscountEvent with _$DiscountEvent {
  const factory DiscountEvent.started() = _Started;
  const factory DiscountEvent.addDiscount(
      AddDiscountRequestModel addDiscountRequestModel) = _AddDiscount;
  const factory DiscountEvent.getDiscount() = _GetDiscount;
}

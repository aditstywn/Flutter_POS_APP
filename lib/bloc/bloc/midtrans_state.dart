part of 'midtrans_bloc.dart';

@freezed
class MidtransState with _$MidtransState {
  const factory MidtransState.initial() = _Initial;
  const factory MidtransState.loading() = _Loading;
  const factory MidtransState.success(String data) = _Success;

  const factory MidtransState.generateQRCodeSuccess(
      MidtransResponseModel midtransResponseModel) = _GenerateQRCodeSuccess;
  const factory MidtransState.checkPaymentStatusSuccess(
          MidtransStatusResponseModel midtransStatusResponseModel) =
      _CheckPaymentStatusSuccess;
  const factory MidtransState.error(String message) = _Error;
}

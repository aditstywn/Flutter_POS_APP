part of 'midtrans_bloc.dart';

@freezed
class MidtransEvent with _$MidtransEvent {
  const factory MidtransEvent.started() = _Started;

  const factory MidtransEvent.generateQRCode(String orderId, int grossAmount) =
      _GenerateQRCode;
  const factory MidtransEvent.checkPaymentStatus(String orderId) =
      _CheckPaymentStatus;
}

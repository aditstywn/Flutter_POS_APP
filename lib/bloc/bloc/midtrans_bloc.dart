// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_pos_app/data/datasource/midtrans/midtrans_remote_datasource.dart';
import 'package:flutter_pos_app/data/models/response/midtrans/midtrans_response_model.dart';
import 'package:flutter_pos_app/data/models/response/midtrans/midtrans_status_response_model.dart';

part 'midtrans_bloc.freezed.dart';
part 'midtrans_event.dart';
part 'midtrans_state.dart';

class MidtransBloc extends Bloc<MidtransEvent, MidtransState> {
  final MidtransRemoteDatasource midtransRemoteDatasource;
  MidtransBloc(
    this.midtransRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GenerateQRCode>(
      (event, emit) async {
        emit(const _Loading());

        final response = await midtransRemoteDatasource.generateQRCode(
            event.orderId, event.grossAmount);

        emit(_GenerateQRCodeSuccess(response));
      },
    );
    on<_CheckPaymentStatus>(
      (event, emit) async {
        // emit(const _Loading());

        final response =
            await midtransRemoteDatasource.checkPaymentStatus(event.orderId);

        if (response.transactionStatus == 'settlement') {
          emit(const MidtransState.success('Pembayaran Berhasil'));
        }
      },
    );
  }
}

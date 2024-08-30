import 'dart:convert';

import 'package:flutter_pos_app/data/models/response/midtrans/midtrans_response_model.dart';
import 'package:flutter_pos_app/data/models/response/midtrans/midtrans_status_response_model.dart';
import 'package:http/http.dart' as http;

class MidtransRemoteDatasource {
  String generateBasicAuthHeader(String serverKey) {
    final base64Credentials = base64Encode(utf8.encode('$serverKey:'));
    final authHeader = 'Basic $base64Credentials';
    return authHeader;
  }

  Future<MidtransResponseModel> generateQRCode(
      String orderId, int grossAmount) async {
    // final serverKey = await AuthLocalDatasource().getMidtransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization':
          generateBasicAuthHeader('SB-Mid-server-9M8qiBBoJ-fng4VN8gpnRdN2'),
    };

    final body = jsonEncode(
      {
        'payment_type': 'gopay',
        'transaction_details': {
          'gross_amount': grossAmount,
          'order_id': orderId,
        },
      },
    );

    final response = await http.post(
      Uri.parse('https://api.sandbox.midtrans.com/v2/charge'),
      // Uri.parse('https://api.midtrans.com/v2/charge'),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return MidtransResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to generate QR Code');
    }
  }

  Future<MidtransStatusResponseModel> checkPaymentStatus(String orderId) async {
    // final serverKey = await AuthLocalDatasource().getMidtransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization':
          generateBasicAuthHeader('SB-Mid-server-9M8qiBBoJ-fng4VN8gpnRdN2'),
    };

    final response = await http.get(
      Uri.parse('https://api.sandbox.midtrans.com/v2/$orderId/status'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return MidtransStatusResponseModel.fromJson(response.body);
    } else {
      print('Error: ${response.statusCode} - ${response.body}');
      throw Exception('Failed to check payment status');
    }
  }
}

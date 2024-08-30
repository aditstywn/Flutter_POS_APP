import 'package:dartz/dartz.dart';
import 'package:flutter_pos_app/data/models/response/discount/addDiscount_response_model.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/variables.dart';
import '../../models/request/discount/addDiscount_request_model.dart';
import '../../models/response/discount/discount_response_model.dart';
import '../auth/auth_local_datasource.dart';

class DiscountRemoteDatasource {
  Future<Either<String, DiscountResponseModel>> getDiscount() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/discount'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      return Right(DiscountResponseModel.fromJson(response.body));
    } else {
      return const Left(' Gagal Ambil Discount');
    }
  }

  Future<Either<String, AddDiscountResponseModel>> addDiscount(
      AddDiscountRequestModel addDiscountRequestModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/discount'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}',
        'Accept': 'application/json',
      },
      body: addDiscountRequestModel.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(AddDiscountResponseModel.fromJson(response.body));
    } else {
      print(response.body);
      return const Left(' Gagal Add Discount');
    }
  }
}

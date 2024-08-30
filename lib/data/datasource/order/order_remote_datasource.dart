import 'package:http/http.dart' as http;

import '../../../core/constants/variables.dart';
import '../../../presentations/pesanan/models/order_model.dart';
import '../auth/auth_local_datasource.dart';

class OrderRemoteDatasource {
  Future<bool> saveOrderServer(OrderModel orderModel) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/order'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.accessToken}'
      },
      body: orderModel.toJson(),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}

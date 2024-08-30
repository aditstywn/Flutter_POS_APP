import 'package:shared_preferences/shared_preferences.dart';

import '../../models/response/auth/login_response_model.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(LoginResponseModel loginResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', loginResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<LoginResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return LoginResponseModel.fromJson(authData!);
  }

  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('auth_data');
  }

  Future<void> saveMidtransServerKey(String serverKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('server_key', serverKey);
  }

  Future<String> getMidtransServerKey() async {
    final prefs = await SharedPreferences.getInstance();
    final serverKey = prefs.getString('server_key');

    return serverKey ?? '';
  }
}

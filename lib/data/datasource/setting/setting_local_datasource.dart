import 'package:shared_preferences/shared_preferences.dart';

import '../../../presentations/setting/models/tax_model.dart';

class SettingLocalDatasource {
  Future<bool> saveTax(TaxModel taxMOdel) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.setString(
      'tax',
      taxMOdel.toJson(),
    );
  }

  Future<TaxModel> getTax() async {
    final prefs = await SharedPreferences.getInstance();
    final tax = prefs.getString('tax');

    if (tax != null) {
      return TaxModel.fromJson(tax);
    } else {
      return TaxModel(
        name: 'Tax',
        type: TaxType.pajak,
        value: 11,
      );
    }
  }

  //  atau dengan cara lain
  Future<bool> saveServiceCharge(int servisCharge) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt('serviceCharge', servisCharge);
  }

  Future<int> getServiceCharge() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('serviceCharge') ?? 0;
  }
}

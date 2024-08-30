// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum TaxType {
  layanan,
  pajak;

  bool get isLayanan => this == TaxType.layanan;
  bool get isPajak => this == TaxType.pajak;
}

class TaxModel {
  final String name;
  final TaxType type;
  final int value;

  TaxModel({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type.name,
      'value': value,
    };
  }

  factory TaxModel.fromMap(Map<String, dynamic> map) {
    return TaxModel(
      name: map['name'] as String,
      type: TaxType.values.firstWhere(
        (e) => e.name == map['type'],
        orElse: () => TaxType.layanan,
      ),
      value: map['value'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaxModel.fromJson(String source) =>
      TaxModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

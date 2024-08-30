import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';

class PrintQris {
  PrintQris._init();

  static final PrintQris instance = PrintQris._init();

  Future<List<int>> printQris(String qrisUrl, int totalBayar) async {
    List<int> bytes = [];

    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);

    bytes += generator.reset();
    bytes += generator.text('SCAN QRIS UNTUK PEMBAYARAN',
        styles: const PosStyles(
          bold: true,
          align: PosAlign.center,
          height: PosTextSize.size1,
          width: PosTextSize.size1,
        ));

    bytes += generator.feed(1);

    //QR code
    bytes += generator.qrcode('oke');

    bytes += generator.feed(1);

    bytes += generator.text(totalBayar.currencyFormatRp,
        styles: const PosStyles(align: PosAlign.center));

    bytes += generator.feed(2);
    bytes += generator.text('Terima kasih',
        styles: const PosStyles(align: PosAlign.center));

    bytes += generator.feed(3);

    return bytes;
  }
}

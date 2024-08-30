import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_pos_app/core/extensions/string_ext.dart';
import 'package:intl/intl.dart';

import '../../presentations/home/models/product_quantity.dart';

class PrintDataoutputs {
  PrintDataoutputs._init();

  static final PrintDataoutputs instance = PrintDataoutputs._init();

  Future<List<int>> printOrder(
    List<ProductQuantity> products,
    int totalQuantity,
    int totalPrice,
    String paymentMethod,
    int nominalBayar,
    String namaKasir,
    int discount,
    int pajak,
    int totalBeli,
  ) async {
    List<int> bytes = [];

    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);

    // final total = totalPrice + pajak;

    bytes += generator.reset();

    bytes += generator.text('RESTO WITH BAHRI',
        styles: const PosStyles(
          bold: true,
          align: PosAlign.center,
          height: PosTextSize.size1,
          width: PosTextSize.size1,
        ));

    bytes += generator.text('Jalan Kenangan Indah',
        styles: const PosStyles(bold: true, align: PosAlign.center));
    bytes += generator.text(
        'Date : ${DateFormat("dd-MM-yyyy , HH:mm").format(DateTime.now())}',
        styles: const PosStyles(bold: false, align: PosAlign.center));

    bytes += generator.feed(1);
    bytes += generator.text('Pesanan:',
        styles: const PosStyles(bold: false, align: PosAlign.center));

    for (final product in products) {
      bytes += generator.text(product.product.name!,
          styles: const PosStyles(align: PosAlign.left));

      bytes += generator.row([
        PosColumn(
          text:
              '${product.product.price!.toIntegerFromText.currencyFormatRp} x ${product.quantity}',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: '${product.product.price!.toIntegerFromText * product.quantity}'
              .toIntegerFromText
              .currencyFormatRp,
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ]);
    }

    bytes += generator.feed(1);

    bytes += generator.row([
      PosColumn(
        text: 'Sub total',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: totalPrice.currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Discount',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: discount.currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Pajak (11%)',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: pajak.ceil().currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Total Pembelian',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: totalBeli.ceil().currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Bayar',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: nominalBayar.ceil().currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Kembalian',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: (nominalBayar - totalBeli).currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Pembayaran',
        width: 8,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: paymentMethod,
        width: 4,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.feed(1);
    bytes += generator.text('Terima kasih',
        styles: const PosStyles(bold: false, align: PosAlign.center));
    bytes += generator.feed(3);

    return bytes;
  }
}

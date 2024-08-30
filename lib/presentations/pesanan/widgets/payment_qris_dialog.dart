// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_pos_app/bloc/bloc/midtrans_bloc.dart';
import 'package:flutter_pos_app/core/extensions/device.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../bloc/order/order_bloc.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../data/dataoutputs/print_qris.dart';
import '../../home/models/product_quantity.dart';
import 'payment_success_dialog.dart';

class PaymentQrisDialog extends StatefulWidget {
  final int totalBayar;
  final int discount;
  final double tax;
  final String paymentMethod;
  final int totalQty;
  const PaymentQrisDialog({
    super.key,
    required this.totalBayar,
    required this.discount,
    required this.tax,
    required this.paymentMethod,
    required this.totalQty,
  });

  @override
  State<PaymentQrisDialog> createState() => _PaymentQrisDialogState();
}

class _PaymentQrisDialogState extends State<PaymentQrisDialog> {
  String orderId = '';
  Timer? timer;
  late MidtransBloc
      midtransBloc; // Tambahkan variabel untuk menyimpan referensi bloc

  @override
  void initState() {
    super.initState();
    orderId = DateTime.now().millisecondsSinceEpoch.toString();
    midtransBloc =
        context.read<MidtransBloc>(); // Simpan referensi pada initState
    midtransBloc.add(MidtransEvent.generateQRCode(orderId, widget.totalBayar));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: AppColors.primary,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Pembayaran QRIS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          const SpaceHeight(6.0),
          Container(
            width: context.deviceWidth,
            padding: const EdgeInsets.all(14.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: AppColors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    List<ProductQuantity> items = state.maybeWhen(
                      orElse: () => [],
                      checkoutSuccess: (items, discount, tax, serviceCharge) =>
                          items,
                    );
                    return BlocConsumer<MidtransBloc, MidtransState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          generateQRCodeSuccess: (midtransResponseModel) async {
                            const onSec = Duration(seconds: 5);
                            timer = Timer.periodic(
                              onSec,
                              (timer) {
                                midtransBloc.add(
                                    // Gunakan midtransBloc yang disimpan
                                    MidtransEvent.checkPaymentStatus(orderId));
                              },
                            );
                          },
                          success: (data) async {
                            timer?.cancel();

                            context.read<OrderBloc>().add(
                                  OrderEvent.order(
                                    items,
                                    widget.discount,
                                    widget.tax.ceil(),
                                    0,
                                    widget.totalBayar,
                                    widget.paymentMethod,
                                  ),
                                );

                            Navigator.pop(context);
                            await showDialog(
                              context: context,
                              builder: (context) => PaymentSuccessDialog(
                                price: widget.totalBayar,
                                totalQty: widget.totalQty,
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () {
                            return Container(
                              width: 256.0,
                              height: 256.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          orElse: () {
                            return Container(
                              width: 256,
                              height: 256,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  'Qris',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            );
                          },
                          generateQRCodeSuccess: (midtransResponseModel) {
                            print(midtransResponseModel.actions.first.url);

                            return Container(
                              width: 256.0,
                              // height: 256.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.network(midtransResponseModel
                                        .actions.first.url),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(170, 50),
                                      backgroundColor: AppColors.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    onPressed: () async {
                                      final printQris =
                                          await PrintQris.instance.printQris(
                                        midtransResponseModel.actions.first.url,
                                        widget.totalBayar,
                                      );

                                      await PrintBluetoothThermal.writeBytes(
                                          printQris);
                                    },
                                    child: const Text(
                                      'Print Qris',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                const SpaceHeight(5.0),
                const Text(
                  'Scan QRIS untuk melakukan pembayaran',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter_pos_app/bloc/bloc/midtrans_bloc.dart';
// import 'package:flutter_pos_app/core/extensions/device.dart';

// import '../../../bloc/checkout/checkout_bloc.dart';
// import '../../../bloc/order/order_bloc.dart';
// import '../../../components/spaces.dart';
// import '../../../core/assets/icons.dart';
// import '../../../core/constants/colors.dart';
// import '../../home/models/product_quantity.dart';
// import 'payment_success_dialog.dart';

// class PaymentQrisDialog extends StatefulWidget {
//   final int totalBayar;
//   final int discount;
//   final double tax;
//   final String paymentMethod;
//   final int totalQty;
//   const PaymentQrisDialog({
//     super.key,
//     required this.totalBayar,
//     required this.discount,
//     required this.tax,
//     required this.paymentMethod,
//     required this.totalQty,
//   });

//   @override
//   State<PaymentQrisDialog> createState() => _PaymentQrisDialogState();
// }

// class _PaymentQrisDialogState extends State<PaymentQrisDialog> {
//   String orderId = '';
//   Timer? timer;
//   @override
//   void initState() {
//     orderId = DateTime.now().millisecondsSinceEpoch.toString();
//     context
//         .read<MidtransBloc>()
//         .add(MidtransEvent.generateQRCode(orderId, widget.totalBayar));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       scrollable: true,
//       contentPadding: const EdgeInsets.all(0),
//       backgroundColor: AppColors.primary,
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Text(
//               'Pembayaran QRIS',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700,
//                 height: 0,
//               ),
//             ),
//           ),
//           const SpaceHeight(6.0),
//           Container(
//             width: context.deviceWidth,
//             padding: const EdgeInsets.all(14.0),
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(20.0)),
//               color: AppColors.white,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 BlocBuilder<CheckoutBloc, CheckoutState>(
//                   builder: (context, state) {
//                     List<ProductQuantity> items = state.maybeWhen(
//                       orElse: () => [],
//                       checkoutSuccess: (items, discount, tax, serviceCharge) =>
//                           items,
//                     );
//                     return BlocConsumer<MidtransBloc, MidtransState>(
//                       listener: (context, state) {
//                         state.maybeWhen(
//                           orElse: () {},
//                           generateQRCodeSuccess: (midtransStatusResponseModel) {
//                             const onSec = Duration(seconds: 5);
//                             timer = Timer.periodic(
//                               onSec,
//                               (timer) {
//                                 context.read<MidtransBloc>().add(
//                                     MidtransEvent.checkPaymentStatus(orderId));
//                               },
//                             );
//                           },
//                           success: (data) async {
//                             // timer?.cancel();

//                             context.read<OrderBloc>().add(
//                                   OrderEvent.order(
//                                     items,
//                                     widget.discount,
//                                     widget.tax.ceil(),
//                                     0,
//                                     widget.totalBayar,
//                                     widget.paymentMethod,
//                                   ),
//                                 );

//                             Navigator.pop(context);
//                             await showDialog(
//                               context: context,
//                               builder: (context) => PaymentSuccessDialog(
//                                 price: widget.totalBayar,
//                                 totalQty: widget.totalQty,
//                               ),
//                             );
//                           },
//                         );
//                       },
//                       builder: (context, state) {
//                         return state.maybeWhen(
//                           loading: () {
//                             return Container(
//                               width: 256.0,
//                               height: 256.0,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.white,
//                               ),
//                               child: const Center(
//                                 child: CircularProgressIndicator(),
//                               ),
//                             );
//                           },
//                           orElse: () {
//                             return Container(
//                               width: 256,
//                               height: 256,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: AppColors.white,
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Qris',
//                                   style: TextStyle(
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                           generateQRCodeSuccess: (midtransResponseModel) {
//                             print(midtransResponseModel.actions.first.url);
//                             return Container(
//                               width: 256.0,
//                               height: 256.0,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.white,
//                               ),
//                               child: Center(
//                                 child: Image.network(
//                                     midtransResponseModel.actions.first.url),
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     );
//                   },
//                 ),
//                 const SpaceHeight(5.0),
//                 const Text(
//                   'Scan QRIS untuk melakukan pembayaran',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




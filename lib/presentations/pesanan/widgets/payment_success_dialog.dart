// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:flutter_pos_app/core/assets/icons.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_pos_app/data/dataoutputs/print_dataoutputs.dart';
import 'package:flutter_pos_app/presentations/home/pages/main_nav.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../bloc/order/order_bloc.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';

class PaymentSuccessDialog extends StatelessWidget {
  final int price;
  final int totalQty;
  const PaymentSuccessDialog({
    super.key,
    required this.price,
    required this.totalQty,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset(
              AppIcons.verify,
              width: 60,
              height: 60,
              color: AppColors.primary,
            ),
          ),
          const SpaceHeight(24.0),
          const Text(
            'Pembayaran Sukses',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
      content: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            orderSuccess: (orderModel) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SpaceHeight(12.0),
                  _LabelValue(
                    label: 'METODE PEMBAYARAN',
                    value: orderModel.paymentMethod,
                  ),
                  const Divider(height: 36.0),
                  _LabelValue(
                    label: 'TOTAL PEMBELIAN',
                    value: orderModel.total.currencyFormatRp,
                  ),
                  const Divider(height: 36.0),
                  _LabelValue(
                    label: 'NOMINAL BAYAR',
                    value: orderModel.paymentAmount.currencyFormatRp,
                  ),
                  const Divider(height: 36.0),
                  _LabelValue(
                    label: 'KEMBALIAN',
                    value: (orderModel.paymentAmount - orderModel.total)
                        .currencyFormatRp,
                  ),
                  const Divider(height: 36.0),
                  _LabelValue(
                    label: 'WAKTU PEMBAYARAN',
                    value: DateFormat('dd-MM-yyyy HH:mm:ss')
                        .format(DateTime.now()),
                  ),
                  const SpaceHeight(40.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        // child: Button.filled(
                        //   onPressed: () {
                        //     // context
                        //     //     .read<OrderBloc>()
                        //     //     .add(const OrderEvent.started());

                        //     // context.pushReplacement(const DashboardPage());
                        //   },
                        //   label: 'Selesai',
                        //   fontSize: 13,
                        // ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all<Size>(
                              const Size(200, 50),
                            ),
                            backgroundColor: WidgetStateProperty.all<Color>(
                                AppColors.primary),
                          ),
                          onPressed: () {
                            context
                                .read<CheckoutBloc>()
                                .add(const CheckoutEvent.started());
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainNav(),
                                ));
                          },
                          child: const Text(
                            'Selesai',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      const SpaceWidth(10.0),
                      Flexible(
                        // child: Button.outlined(
                        //   onPressed: () async {
                        //     // final printValue =
                        //     //     await CwbPrint.instance.printOrder(
                        //     //   product,
                        //     //   totalQuantity,
                        //     //   totalPrice,
                        //     //   paymentMethod,
                        //     //   nominalBayar,
                        //     //   namaKasir,
                        //     // );

                        //     // await PrintBluetoothThermal.writeBytes(printValue);
                        //   },
                        //   label: 'Print',
                        //   icon: Assets.icons.print.svg(),
                        //   fontSize: 13,
                        // ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all<Size>(
                              const Size(200, 50),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all<Color>(AppColors.white),
                            side: WidgetStateProperty.all(const BorderSide(
                                color: AppColors.primary, width: 1.0)),
                          ),
                          onPressed: () async {
                            final printValue =
                                await PrintDataoutputs.instance.printOrder(
                              orderModel.orderItems,
                              totalQty,
                              orderModel.subTotal,
                              orderModel.paymentMethod,
                              orderModel.paymentAmount,
                              orderModel.namaKasir,
                              orderModel.discount,
                              orderModel.tax,
                              orderModel.total,
                            );

                            await PrintBluetoothThermal.writeBytes(printValue);
                          },
                          child: Image.asset(
                            AppIcons.printer,
                            fit: BoxFit.cover,
                            width: 30,
                            height: 30,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class _LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const _LabelValue({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(),
        ),
        const SpaceHeight(5.0),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_pos_app/core/assets/icons.dart';
// import 'package:flutter_pos_app/core/extensions/int_ext.dart';
// import 'package:flutter_pos_app/core/extensions/string_ext.dart';
// import 'package:flutter_pos_app/presentations/home/pages/main_nav.dart';
// import 'package:intl/intl.dart';

// import '../../../bloc/checkout/checkout_bloc.dart';
// import '../../../components/spaces.dart';
// import '../../../core/constants/colors.dart';

// class PaymentSuccessDialog extends StatelessWidget {
//   final int price;
//   const PaymentSuccessDialog({
//     super.key,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         scrollable: true,
//         title: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Center(
//               child: Image.asset(
//                 AppIcons.verify,
//                 width: 60,
//                 height: 60,
//                 color: AppColors.primary,
//               ),
//             ),
//             const SpaceHeight(24.0),
//             const Text(
//               'Pembayaran Sukses',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 20,
//               ),
//             ),
//           ],
//         ),
//         content: BlocBuilder<CheckoutBloc, CheckoutState>(
//           builder: (context, state) {
//             final subTottal = state.maybeWhen(
//               orElse: () => 0,
//               checkoutSuccess: (products) {
//                 return products.fold(
//                   0,
//                   (previousValue, element) =>
//                       previousValue +
//                       (element.product.price!.toIntegerFromText *
//                           element.quantity),
//                 );
//               },
//             );
//             final tax = subTottal * 0.05;
//             final total = subTottal + tax;
//             return Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SpaceHeight(12.0),
//                 const _LabelValue(
//                   label: 'METODE PEMBAYARAN',
//                   value: 'Tunai',
//                 ),
//                 // const Divider(height: 36.0),
//                 // Column(
//                 //   crossAxisAlignment: CrossAxisAlignment.start,
//                 //   children: [
//                 //     const Text(
//                 //       'TOTAL PEMBELIAN',
//                 //       style: TextStyle(),
//                 //     ),
//                 //     const SpaceHeight(5.0),
//                 //     Text(
//                 //       '10000',
//                 //       style: const TextStyle(
//                 //         fontWeight: FontWeight.w700,
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 const Divider(height: 36.0),
//                 _LabelValue(
//                   label: 'TOTAL PEMBELIAN',
//                   value: total.ceil().currencyFormatRp,
//                 ),
//                 const Divider(height: 36.0),
//                 _LabelValue(
//                   label: 'NOMINAL BAYAR',
//                   value: price.currencyFormatRp,
//                 ),
//                 const Divider(height: 36.0),
//                 _LabelValue(
//                   label: 'KEMBALIAN',
//                   value: (price - total.ceil()).currencyFormatRp,
//                 ),
//                 const Divider(height: 36.0),
//                 _LabelValue(
//                   label: 'WAKTU PEMBAYARAN',
//                   value:
//                       DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now()),
//                 ),
//                 const SpaceHeight(40.0),
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Flexible(
//                       // child: Button.filled(
//                       //   onPressed: () {
//                       //     // context
//                       //     //     .read<OrderBloc>()
//                       //     //     .add(const OrderEvent.started());

//                       //     // context.pushReplacement(const DashboardPage());
//                       //   },
//                       //   label: 'Selesai',
//                       //   fontSize: 13,
//                       // ),
//                       child: ElevatedButton(
//                         style: ButtonStyle(
//                           minimumSize: WidgetStateProperty.all<Size>(
//                             const Size(200, 50),
//                           ),
//                           backgroundColor:
//                               WidgetStateProperty.all<Color>(AppColors.primary),
//                         ),
//                         onPressed: () {
//                           context
//                               .read<CheckoutBloc>()
//                               .add(const CheckoutEvent.started());
//                           Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const MainNav(),
//                               ));
//                         },
//                         child: const Text(
//                           'Selesai',
//                           style: TextStyle(
//                             color: AppColors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SpaceWidth(10.0),
//                     Flexible(
//                       // child: Button.outlined(
//                       //   onPressed: () async {
//                       //     // final printValue =
//                       //     //     await CwbPrint.instance.printOrder(
//                       //     //   product,
//                       //     //   totalQuantity,
//                       //     //   totalPrice,
//                       //     //   paymentMethod,
//                       //     //   nominalBayar,
//                       //     //   namaKasir,
//                       //     // );

//                       //     // await PrintBluetoothThermal.writeBytes(printValue);
//                       //   },
//                       //   label: 'Print',
//                       //   icon: Assets.icons.print.svg(),
//                       //   fontSize: 13,
//                       // ),
//                       child: ElevatedButton(
//                         style: ButtonStyle(
//                           minimumSize: WidgetStateProperty.all<Size>(
//                             const Size(200, 50),
//                           ),
//                           backgroundColor:
//                               WidgetStateProperty.all<Color>(AppColors.white),
//                           side: WidgetStateProperty.all(const BorderSide(
//                               color: AppColors.primary, width: 1.0)),
//                         ),
//                         onPressed: () {},
//                         child: Image.asset(
//                           AppIcons.printer,
//                           fit: BoxFit.cover,
//                           width: 30,
//                           height: 30,
//                           color: AppColors.primary,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             );
//           },
//         ));
//   }
// }

// class _LabelValue extends StatelessWidget {
//   final String label;
//   final String value;

//   const _LabelValue({
//     required this.label,
//     required this.value,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(),
//         ),
//         const SpaceHeight(5.0),
//         Text(
//           value,
//           style: const TextStyle(
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ],
//     );
//   }
// }

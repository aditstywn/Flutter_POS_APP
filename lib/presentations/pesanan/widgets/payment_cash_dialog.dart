// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:flutter_pos_app/core/extensions/int_ext.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../bloc/order/order_bloc.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../home/models/product_quantity.dart';
import 'payment_success_dialog.dart';

class PaymentCashDialog extends StatefulWidget {
  final int price;
  final int discount;
  final double total;
  final double tax;
  final String paymentMethod;
  final int totalQty;
  const PaymentCashDialog({
    super.key,
    required this.price,
    required this.discount,
    required this.total,
    required this.tax,
    required this.paymentMethod,
    required this.totalQty,
  });

  @override
  State<PaymentCashDialog> createState() => _PaymentCashDialogState();
}

class _PaymentCashDialogState extends State<PaymentCashDialog> {
  TextEditingController? priceController;
  late int updatedPrice;

  @override
  void initState() {
    super.initState();
    priceController = TextEditingController();
    updatedPrice = widget.price;
    priceController!.text = '${widget.price}';
    // priceController!.text =
    //     NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0)
    //         .format(widget.price);
  }

  @override
  void dispose() {
    priceController!.dispose();
    super.dispose();
  }

  String formatCurrency(String s) {
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: 0,
    ).format(
      int.parse(
        s.replaceAll('.', '').replaceAll('Rp', ''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Stack(
        children: [
          IconButton(
            onPressed: () {
              return Navigator.pop(context);
            },
            icon: const Icon(Icons.highlight_off),
            color: AppColors.primary,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Pembayaran - Tunai',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      content: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          List<ProductQuantity> items = state.maybeWhen(
            orElse: () => [],
            checkoutSuccess: (items, discount, tax, serviceCharge) => items,
          );

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total : ${widget.total.ceil().currencyFormatRp}',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SpaceHeight(16.0),
              // TextField(
              //   controller: priceController,
              //   keyboardType: TextInputType.number,
              //   onChanged: (value) {
              //     setState(() {
              //       updatedPrice = int.tryParse(value) ?? widget.price;
              //     });
              //   },
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: const BorderSide(color: Colors.grey),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(16.0),
              //       borderSide: const BorderSide(color: AppColors.primary),
              //     ),
              //   ),
              // ),

              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  String formattedValue =
                      value.replaceAll('.', '').replaceAll('Rp', '');
                  if (formattedValue.isNotEmpty) {
                    setState(() {
                      updatedPrice =
                          int.tryParse(formattedValue) ?? widget.price;
                      priceController!.value = TextEditingValue(
                        text: formatCurrency(formattedValue),
                        selection: TextSelection.collapsed(
                          offset: formatCurrency(formattedValue).length,
                        ),
                      );
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(color: AppColors.primary),
                  ),
                ),
              ),
              const SpaceHeight(16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          WidgetStateProperty.all<Size>(const Size(112, 50)),
                    ),
                    onPressed: () async {
                      setState(() {
                        updatedPrice = widget.total.ceil();
                      });

                      if (updatedPrice < widget.total.ceil()) {
                        AlertWarning(context);
                      } else {
                        context.read<OrderBloc>().add(
                              OrderEvent.order(
                                items,
                                widget.discount,
                                widget.tax.ceil(),
                                0,
                                updatedPrice,
                                widget.paymentMethod,
                              ),
                            );

                        await showDialog(
                          context: context,
                          builder: (context) => PaymentSuccessDialog(
                            price: updatedPrice,
                            totalQty: widget.totalQty,
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Uang Pas',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SpaceWidth(4.0),
                  Flexible(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(120, 50)),
                      ),
                      onPressed: () async {
                        setState(() {
                          updatedPrice = 50000;
                        });

                        if (updatedPrice < widget.total.ceil()) {
                          AlertWarning(context);
                        } else {
                          context.read<OrderBloc>().add(
                                OrderEvent.order(
                                  items,
                                  widget.discount,
                                  widget.tax.ceil(),
                                  0,
                                  updatedPrice,
                                  widget.paymentMethod,
                                ),
                              );

                          await showDialog(
                            context: context,
                            builder: (context) => PaymentSuccessDialog(
                              price: updatedPrice,
                              totalQty: widget.totalQty,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Rp. 50.000',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceHeight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(112, 50)),
                      ),
                      onPressed: () async {
                        setState(() {
                          updatedPrice = 100000;
                        });

                        if (updatedPrice < widget.total.ceil()) {
                          AlertWarning(context);
                        } else {
                          context.read<OrderBloc>().add(
                                OrderEvent.order(
                                  items,
                                  widget.discount,
                                  widget.tax.ceil(),
                                  0,
                                  updatedPrice,
                                  widget.paymentMethod,
                                ),
                              );

                          await showDialog(
                            context: context,
                            builder: (context) => PaymentSuccessDialog(
                              price: updatedPrice,
                              totalQty: widget.totalQty,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Rp. 100.000',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                  const SpaceWidth(4.0),
                  Flexible(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(112, 50)),
                      ),
                      onPressed: () async {
                        setState(() {
                          updatedPrice = 200000;
                        });

                        if (updatedPrice < widget.total.ceil()) {
                          AlertWarning(context);
                        } else {
                          context.read<OrderBloc>().add(
                                OrderEvent.order(
                                  items,
                                  widget.discount,
                                  widget.tax.ceil(),
                                  0,
                                  updatedPrice,
                                  widget.paymentMethod,
                                ),
                              );

                          await showDialog(
                            context: context,
                            builder: (context) => PaymentSuccessDialog(
                              price: updatedPrice,
                              totalQty: widget.totalQty,
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Rp. 200.000',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceHeight(30.0),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width, 50),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(AppColors.primary),
                  ),
                  onPressed: () async {
                    if (updatedPrice < widget.total.ceil()) {
                      AlertWarning(context);
                    } else {
                      context.read<OrderBloc>().add(
                            OrderEvent.order(
                              items,
                              widget.discount,
                              widget.tax.ceil(),
                              0,
                              updatedPrice,
                              widget.paymentMethod,
                            ),
                          );

                      await showDialog(
                        context: context,
                        builder: (context) => PaymentSuccessDialog(
                          price: updatedPrice,
                          totalQty: widget.totalQty,
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Proses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<dynamic> AlertWarning(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              'Peringatan!!!',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        content: IntrinsicWidth(
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Pembayaran kurang',
                  style: TextStyle(
                    color: AppColors.red,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStateProperty.all<Size>(
                      const Size(150, 50),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(AppColors.primary),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Tutup',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// import 'package:flutter_pos_app/core/extensions/int_ext.dart';
// import 'package:intl/intl.dart';

// import '../../../components/spaces.dart';
// import '../../../core/constants/colors.dart';
// import 'payment_success_dialog.dart';

// class PaymentCashDialog extends StatefulWidget {
//   final int price;
//   final double? total;
//   const PaymentCashDialog({
//     super.key,
//     required this.price,
//     required this.total,
//   });

//   @override
//   State<PaymentCashDialog> createState() => _PaymentCashDialogState();
// }

// class _PaymentCashDialogState extends State<PaymentCashDialog> {
//   TextEditingController? priceController;
//   late int updatedPrice;

//   @override
//   void initState() {
//     super.initState();
//     priceController = TextEditingController();
//     updatedPrice = widget.price;
//     priceController!.text = '${widget.price}';
//     // priceController!.text =
//     //     NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0)
//     //         .format(widget.price);
//   }

//   @override
//   void dispose() {
//     priceController!.dispose();
//     super.dispose();
//   }

//   String formatCurrency(String s) {
//     return NumberFormat.currency(
//       locale: 'id',
//       symbol: 'Rp. ',
//       decimalDigits: 0,
//     ).format(
//       int.parse(
//         s.replaceAll('.', '').replaceAll('Rp', ''),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       scrollable: true,
//       title: Stack(
//         children: [
//           IconButton(
//             onPressed: () {
//               return Navigator.pop(context);
//             },
//             icon: const Icon(Icons.highlight_off),
//             color: AppColors.primary,
//           ),
//           const Center(
//             child: Padding(
//               padding: EdgeInsets.only(top: 12.0),
//               child: Text(
//                 'Pembayaran - Tunai',
//                 style: TextStyle(
//                   color: AppColors.primary,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Total : ${widget.total!.ceil().currencyFormatRp}',
//             style: const TextStyle(
//               color: AppColors.primary,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SpaceHeight(16.0),
//           // TextField(
//           //   controller: priceController,
//           //   keyboardType: TextInputType.number,
//           //   onChanged: (value) {
//           //     setState(() {
//           //       updatedPrice = int.tryParse(value) ?? widget.price;
//           //     });
//           //   },
//           //   decoration: InputDecoration(
//           //     border: OutlineInputBorder(
//           //       borderRadius: BorderRadius.circular(20),
//           //       borderSide: const BorderSide(color: Colors.grey),
//           //     ),
//           //     enabledBorder: OutlineInputBorder(
//           //       borderRadius: BorderRadius.circular(16.0),
//           //       borderSide: const BorderSide(color: AppColors.primary),
//           //     ),
//           //   ),
//           // ),

//           TextField(
//             controller: priceController,
//             keyboardType: TextInputType.number,
//             onChanged: (value) {
//               String formattedValue =
//                   value.replaceAll('.', '').replaceAll('Rp', '');
//               if (formattedValue.isNotEmpty) {
//                 setState(() {
//                   updatedPrice = int.tryParse(formattedValue) ?? widget.price;
//                   priceController!.value = TextEditingValue(
//                     text: formatCurrency(formattedValue),
//                     selection: TextSelection.collapsed(
//                       offset: formatCurrency(formattedValue).length,
//                     ),
//                   );
//                 });
//               }
//             },
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 borderSide: const BorderSide(color: Colors.grey),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//                 borderSide: const BorderSide(color: AppColors.primary),
//               ),
//             ),
//           ),
//           const SpaceHeight(16.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 style: ButtonStyle(
//                   minimumSize:
//                       WidgetStateProperty.all<Size>(const Size(112, 50)),
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     updatedPrice = widget.total!.ceil();
//                   });

//                   showDialog(
//                     context: context,
//                     builder: (context) => PaymentSuccessDialog(
//                       price: updatedPrice,
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   'Uang Pas',
//                   style: TextStyle(
//                     color: AppColors.primary,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ),
//               const SpaceWidth(4.0),
//               Flexible(
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     minimumSize:
//                         WidgetStateProperty.all<Size>(const Size(120, 50)),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       updatedPrice = 50000;
//                     });

//                     showDialog(
//                       context: context,
//                       builder: (context) => PaymentSuccessDialog(
//                         price: updatedPrice,
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     'Rp. 50.000',
//                     style: TextStyle(
//                       color: AppColors.primary,
//                       fontSize: 13.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SpaceHeight(10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     minimumSize:
//                         WidgetStateProperty.all<Size>(const Size(112, 50)),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       updatedPrice = 100000;
//                     });

//                     showDialog(
//                       context: context,
//                       builder: (context) => PaymentSuccessDialog(
//                         price: updatedPrice,
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     'Rp. 100.000',
//                     style: TextStyle(
//                       color: AppColors.primary,
//                       fontSize: 13.0,
//                     ),
//                   ),
//                 ),
//               ),
//               const SpaceWidth(4.0),
//               Flexible(
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     minimumSize:
//                         WidgetStateProperty.all<Size>(const Size(112, 50)),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       updatedPrice = 200000;
//                     });

//                     showDialog(
//                       context: context,
//                       builder: (context) => PaymentSuccessDialog(
//                         price: updatedPrice,
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     'Rp. 200.000',
//                     style: TextStyle(
//                       color: AppColors.primary,
//                       fontSize: 13.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SpaceHeight(30.0),
//           Center(
//             child: ElevatedButton(
//               style: ButtonStyle(
//                 minimumSize: WidgetStateProperty.all<Size>(
//                   Size(MediaQuery.of(context).size.width, 50),
//                 ),
//                 backgroundColor:
//                     WidgetStateProperty.all<Color>(AppColors.primary),
//               ),
//               onPressed: () {
//                 if (updatedPrice < widget.total!.ceil()) {
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: const Center(
//                         child: Padding(
//                           padding: EdgeInsets.only(top: 12.0),
//                           child: Text(
//                             'Peringatan!!!',
//                             style: TextStyle(
//                               color: AppColors.primary,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                         ),
//                       ),
//                       content: IntrinsicWidth(
//                         child: IntrinsicHeight(
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               const Text(
//                                 'Pembayaran kurang',
//                                 style: TextStyle(
//                                   color: AppColors.red,
//                                 ),
//                               ),
//                               const SizedBox(height: 16.0),
//                               ElevatedButton(
//                                 style: ButtonStyle(
//                                   minimumSize: WidgetStateProperty.all<Size>(
//                                     const Size(150, 50),
//                                   ),
//                                   backgroundColor:
//                                       WidgetStateProperty.all<Color>(
//                                           AppColors.primary),
//                                 ),
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: const Text(
//                                   'Tutup',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     color: AppColors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 } else {
//                   showDialog(
//                     context: context,
//                     builder: (context) => PaymentSuccessDialog(
//                       price: updatedPrice,
//                     ),
//                   );
//                 }
//               },
//               child: const Text(
//                 'Proses',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

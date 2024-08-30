import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/bloc/auth/auth_bloc.dart';
import 'package:flutter_pos_app/core/assets/icons.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_pos_app/presentations/pesanan/dialog/discount_dialog.dart';
import 'package:flutter_pos_app/presentations/pesanan/dialog/service_dialog.dart';
import 'package:flutter_pos_app/presentations/pesanan/dialog/tax_dialog.dart';
import 'package:flutter_pos_app/presentations/pesanan/widgets/button_icon.dart';
import 'package:flutter_pos_app/presentations/pesanan/widgets/payment_qris_dialog.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../home/widgets/menu_button.dart';
import '../../home/widgets/process_button.dart';
import '../widgets/payment_cash_dialog.dart';
import '../widgets/pesanan_card.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.getAuthLocal());
    super.initState();
  }

  final indexValue = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     const Text(
                  //       'Halaman Pesanan',
                  //       style: TextStyle(
                  //         color: AppColors.primary,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //     BlocBuilder<AuthBloc, AuthState>(
                  //       builder: (context, state) {
                  //         return state.maybeWhen(
                  //           orElse: () {
                  //             return const Text(
                  //               'Kasir : -',
                  //               style: TextStyle(
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.w500,
                  //               ),
                  //             );
                  //           },
                  //           getAuthLocalSucess: (loginRequestModel) {
                  //             return Text(
                  //               'Kasir : ${loginRequestModel.user.name}',
                  //               style: const TextStyle(
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.w500,
                  //               ),
                  //             );
                  //           },
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
                  Row(
                    children: [
                      ButtonIcon(
                        label: 'Discount',
                        image: AppIcons.discount,
                        onPressed: () => showDialog(
                          builder: (context) => const DiscountDialog(),
                          context: context,
                        ),
                      ),
                      const SpaceWidth(20),
                      ButtonIcon(
                        label: 'Pajak',
                        image: AppIcons.tax,
                        onPressed: () => showDialog(
                          builder: (context) => const TaxDialog(),
                          context: context,
                        ),
                      ),
                      const SpaceWidth(20),
                      ButtonIcon(
                        label: 'Layanan',
                        image: AppIcons.service,
                        onPressed: () => showDialog(
                          builder: (context) => const ServiceDialog(),
                          context: context,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<CheckoutBloc>()
                          .add(const CheckoutEvent.started());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      height: 60.0,
                      width: 60.0,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: const Icon(
                        Icons.delete,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceHeight(8.0),
              const Divider(),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: Text("Tidak Ada Pesanan"),
                    ),
                    checkoutSuccess: (items, discount, tax, serviceCharge) {
                      if (items.isEmpty) {
                        return const Center(
                          child: Text("Tidak Ada Pesanan"),
                        );
                      }
                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return PesananCard(
                            data: items[index],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SpaceHeight(16.0),
                        itemCount: items.length,
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(8.0),
              const Divider(),
              const SpaceHeight(8.0),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final subTotal = state.maybeWhen(
                    orElse: () => 0,
                    checkoutSuccess: (products, discount, tax, serviceCharge) {
                      return products.fold(
                        0,
                        (previousValue, element) =>
                            previousValue +
                            (element.product.price!.toIntegerFromText *
                                element.quantity),
                      );
                    },
                  );
                  final tax = state.maybeWhen(
                    orElse: () => 0,
                    checkoutSuccess: (items, discount, tax, serviceCharge) {
                      if (items.isEmpty) {
                        return 0;
                      } else {
                        return tax;
                      }
                    },
                  );
                  final taxTotal = subTotal * tax;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pajak ( ${(tax * 100).ceil()}% )',
                        style: const TextStyle(color: AppColors.grey),
                      ),
                      Text(
                        taxTotal.ceil().currencyFormatRp, // dibulatkan
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SpaceHeight(16.0),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  final discount = state.maybeWhen(
                    orElse: () => 0,
                    checkoutSuccess: (items, discount, tax, serviceCharge) {
                      if (discount == null) {
                        return 0;
                      } else {
                        return discount.value.toIntegerFromText;
                      }
                    },
                  );

                  final subTotal = state.maybeWhen(
                    orElse: () => 0,
                    checkoutSuccess:
                        (products, discount, tax, serviceCaherge) =>
                            products.fold(
                      0,
                      (previousValue, element) =>
                          previousValue +
                          (element.product.price!.toIntegerFromText *
                              element.quantity),
                    ),
                  );

                  final totalDiscount = subTotal * (discount / 100);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Diskon ( $discount% )',
                        style: const TextStyle(color: AppColors.grey),
                      ),
                      Text(
                        totalDiscount.ceil().currencyFormatRp,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SpaceHeight(16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sub total',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  BlocBuilder<CheckoutBloc, CheckoutState>(
                    builder: (context, state) {
                      final subTotal = state.maybeWhen(
                        orElse: () => 0,
                        checkoutSuccess:
                            (products, discount, tax, serviceCharge) {
                          return products.fold(
                            0,
                            (previousValue, element) =>
                                previousValue +
                                (element.product.price!.toIntegerFromText *
                                    element.quantity),
                          );
                        },
                      );
                      return Text(
                        subTotal.currencyFormatRp,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SpaceHeight(20.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  checkoutSuccess: (products, discount, tax, serviceCharge) {
                    return ValueListenableBuilder(
                      valueListenable: indexValue,
                      builder: (context, value, _) => Row(
                        children: [
                          const SpaceWidth(10.0),
                          MenuButton(
                            iconPath: AppIcons.tunai,
                            label: 'Tunai',
                            isActive: value == 1,
                            size: 40,
                            onPressed: () {
                              indexValue.value = 1;
                              // context.read<OrderBloc>().add(
                              //     OrderEvent.addPymentMethod(
                              //         'Tunai', product));
                            },
                          ),
                          const SpaceWidth(10.0),
                          MenuButton(
                            iconPath: AppIcons.qris,
                            label: 'QRIS',
                            isActive: value == 2,
                            size: 40,
                            onPressed: () {
                              indexValue.value = 2;
                              // context.read<OrderBloc>().add(
                              //     OrderEvent.addPymentMethod('QRIS', product));
                            },
                          ),
                          const SpaceWidth(10.0),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(20.0),
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                final discount = state.maybeWhen(
                  orElse: () => 0,
                  checkoutSuccess: (items, discount, tax, serviceCharge) {
                    if (discount == null) {
                      return 0;
                    } else {
                      return discount.value.toIntegerFromText;
                    }
                  },
                );

                final price = state.maybeWhen(
                  orElse: () => 0,
                  checkoutSuccess: (products, discount, tax, serviceCharge) {
                    return products.fold(
                      0,
                      (previousValue, element) =>
                          previousValue +
                          (element.product.price!.toIntegerFromText *
                              element.quantity),
                    );
                  },
                );

                final totalQty = state.maybeWhen(
                  orElse: () => 0,
                  checkoutSuccess: (items, discount, tax, serviceCharge) {
                    return items.fold(
                        0,
                        (previousValue, element) =>
                            previousValue + element.quantity);
                  },
                );

                final tax = state.maybeWhen(
                    orElse: () => 0,
                    checkoutSuccess: (products, discount, tax, serviceCaherge) {
                      return tax;
                    });

                final totalDiscount = price * (discount / 100);

                final subTotal = price - totalDiscount;

                final taxTotal = price * tax;

                final total = subTotal + taxTotal;

                return ProcessButton(
                  total: total.ceil(),
                  price: 0,
                  onPressed: () async {
                    if (indexValue.value == 0) {
                    } else if (indexValue.value == 1) {
                      showDialog(
                        context: context,
                        builder: (context) => PaymentCashDialog(
                          price: 0,
                          discount: totalDiscount.ceil(),
                          total: total,
                          tax: taxTotal.ceilToDouble(),
                          paymentMethod: 'Cash',
                          totalQty: totalQty,
                        ),
                      );
                    } else if (indexValue.value == 2) {
                      showDialog(
                        context: context,
                        builder: (context) => PaymentQrisDialog(
                          totalBayar: total.ceil(),
                          discount: totalDiscount.ceil(),
                          tax: taxTotal.ceilToDouble(),
                          paymentMethod: 'Qris',
                          totalQty: totalQty,
                        ),
                      );
                      // showDialog(
                      //   context: context,
                      //   barrierDismissible: false,
                      //   builder: (context) => PaymentQrisDialog(price: totalHarga),
                      // );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

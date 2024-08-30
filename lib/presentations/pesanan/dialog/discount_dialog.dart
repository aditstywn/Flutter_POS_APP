import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../bloc/discount/discount_bloc.dart';
import '../../../core/constants/colors.dart';

class DiscountDialog extends StatefulWidget {
  const DiscountDialog({super.key});

  @override
  State<DiscountDialog> createState() => _DiscountDialogState();
}

class _DiscountDialogState extends State<DiscountDialog> {
  @override
  void initState() {
    context.read<DiscountBloc>().add(const DiscountEvent.getDiscount());
    super.initState();
  }

  int discountIdSelected = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Stack(
          alignment: Alignment.center,
          children: [
            const Text(
              'DISKON',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.cancel,
                  color: AppColors.primary,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
        content: BlocBuilder<DiscountBloc, DiscountState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              getDiscountSuccess: (discount) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: discount
                      .map(
                        (discount) => ListTile(
                          title: Text('Nama Discount : ${discount.name}'),
                          subtitle: Text(
                              'Potongan Harga : ${discount.value.replaceAll('.00', '')}%'),
                          contentPadding: EdgeInsets.zero,
                          textColor: AppColors.primary,
                          trailing: Checkbox(
                            value: discount.id == discountIdSelected,
                            onChanged: (value) {
                              setState(
                                () {
                                  discountIdSelected = discount.id;
                                  context
                                      .read<CheckoutBloc>()
                                      .add(CheckoutEvent.addDiscount(discount));
                                },
                              );
                            },
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                      .toList(),
                );
              },
            );
          },
        ));
  }
}

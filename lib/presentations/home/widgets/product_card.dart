// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_pos_app/core/assets/icons.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_pos_app/core/extensions/string_ext.dart';

import 'package:flutter_pos_app/data/models/response/product/product_response_models.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CheckoutBloc>().add(CheckoutEvent.addItem(product));
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    child: CachedNetworkImage(
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      imageUrl: product.image!.contains('http')
                          ? product.image!
                          : "${Variables.imageBaseUrl}${product.image}",
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  product.category?.name ?? '-',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.name ?? '-',
                  style: const TextStyle(
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  product.price!.toIntegerFromText.currencyFormatRp,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  checkoutSuccess: (items, discount, tax, serviceCharge) {
                    return items.any((element) => element.product == product)
                        ? items
                                    .firstWhere(
                                        (element) => element.product == product)
                                    .quantity >
                                0
                            ? Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0)),
                                    color: AppColors.primary,
                                  ),
                                  child: Center(
                                    child: Text(
                                      items
                                          .firstWhere((element) =>
                                              element.product == product)
                                          .quantity
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9.0)),
                                    color: AppColors.primary,
                                  ),
                                  child: Image.asset(
                                    AppIcons.shopingBasket,
                                    color: AppColors.white,
                                  ),
                                ),
                              )
                        : Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 36,
                              height: 36,
                              padding: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9.0)),
                                color: AppColors.primary,
                              ),
                              child: Image.asset(
                                AppIcons.shopingBasket,
                                color: AppColors.white,
                              ),
                            ),
                          );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

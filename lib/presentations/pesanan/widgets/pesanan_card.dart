// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_pos_app/core/extensions/string_ext.dart';

import 'package:flutter_pos_app/presentations/home/models/product_quantity.dart';

import '../../../bloc/checkout/checkout_bloc.dart';
import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';

class PesananCard extends StatelessWidget {
  final ProductQuantity data;
  const PesananCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFC7D0EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            child: CachedNetworkImage(
              height: 70,
              width: 70,
              fit: BoxFit.cover,
              imageUrl: data.product.image!.contains('http')
                  ? data.product.image!
                  : "${Variables.imageBaseUrl}${data.product.image}",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SpaceWidth(12.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.product.name.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      (data.product.price!.toIntegerFromText * data.quantity)
                          .currencyFormatRp,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(data.product.price!.toIntegerFromText.currencyFormatRp),
                const SpaceHeight(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<CheckoutBloc>()
                                .add(CheckoutEvent.removeItem(data.product));
                          },
                          child: Container(
                            color: AppColors.white,
                            child: const Icon(
                              Icons.remove_circle,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                          child: Center(
                            child: Text(data.quantity.toString()),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<CheckoutBloc>().add(
                                  CheckoutEvent.addItem(data.product),
                                );
                          },
                          child: Container(
                            color: AppColors.white,
                            child: const Icon(
                              Icons.add_circle,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // padding: const EdgeInsets.all(8.0),
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: AppColors.red,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: AppColors.white,
                        ),
                        onPressed: () {
                          context
                              .read<CheckoutBloc>()
                              .add(CheckoutEvent.deleteItem(data.product));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

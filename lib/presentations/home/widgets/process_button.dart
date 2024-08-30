// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_pos_app/core/extensions/int_ext.dart';

import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';

class ProcessButton extends StatelessWidget {
  final int price;
  final int total;
  final VoidCallback onPressed;
  const ProcessButton({
    super.key,
    required this.price,
    required this.total,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          color: AppColors.primary,
        ),
        child: Row(
          children: [
            Text(
              total.ceil().currencyFormatRp,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            const Text(
              'Proses',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceWidth(5.0),
            const Icon(
              Icons.chevron_right,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';

class AddData extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AddData({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(16.0),
        decoration: ShapeDecoration(
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.card),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              color: AppColors.white,
              size: 30,
            ),
            const SpaceHeight(2),
            Text(
              title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

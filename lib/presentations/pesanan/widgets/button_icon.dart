import 'package:flutter/material.dart';

import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';

class ButtonIcon extends StatelessWidget {
  final String label;
  final String image;
  final VoidCallback onPressed;

  const ButtonIcon({
    super.key,
    required this.label,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.primary),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Image.asset(image),
          ),
          const SpaceHeight(8.0),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

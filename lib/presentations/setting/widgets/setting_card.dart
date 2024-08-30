// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../components/spaces.dart';
import '../../../core/constants/colors.dart';

class SettingCard extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onPressed;
  const SettingCard({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: AppColors.disabled,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                fit: BoxFit.contain,
                width: 80,
                color: AppColors.primary,
              ),
              const SpaceHeight(8),
              Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class setting_menu_button extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onPressed;
  const setting_menu_button({
    super.key,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20.0,
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                color: AppColors.primary.withOpacity(0.3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.white : AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

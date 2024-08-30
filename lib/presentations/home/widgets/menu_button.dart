// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_pos_app/core/constants/colors.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool isActive;
  final VoidCallback onPressed;
  final double size;
  const MenuButton({
    super.key,
    required this.label,
    required this.iconPath,
    required this.isActive,
    required this.onPressed,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20.0,
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                iconPath,
                fit: BoxFit.contain,
                width: size,
                height: size,
                color: isActive ? Colors.white : Colors.black,
              ),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : AppColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

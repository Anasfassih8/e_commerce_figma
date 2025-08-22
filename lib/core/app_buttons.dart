import 'package:e_commerce_figma/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const CustomButton({
    this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity,50),
                                      backgroundColor: color?? AppColors.lightGrey),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

import 'package:e_commerce_figma/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final TextStyle? style;
  
  const CustomButton({
    this.style,
    this.backgroundColor,
    this.color,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??double.infinity,
      height: height?? 50,
    child:ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity,50),
                                      backgroundColor: color?? AppColors.lightGrey),
      onPressed: onPressed,
      child: Text(text),
    )

    );
  }
}

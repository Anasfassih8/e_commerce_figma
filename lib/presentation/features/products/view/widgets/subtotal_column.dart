import 'package:e_commerce_figma/core/app_strings.dart';
import 'package:e_commerce_figma/core/text_styles.dart';
import 'package:e_commerce_figma/data/products.dart';
import 'package:flutter/material.dart';

class SubtotalColumn extends StatelessWidget {
  const SubtotalColumn({super.key, required this.products});

  final Product products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //
        Text(AppStrings.subtotal, style: Styles.style12greyM),
        //
        Text("\$${products.price}", style: Styles.style24mainClrL),
      ],
    );
  }
}
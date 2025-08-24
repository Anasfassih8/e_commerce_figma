
import 'package:e_commerce_figma/core/app_assets.dart';
import 'package:e_commerce_figma/core/app_colors.dart';
import 'package:e_commerce_figma/core/app_strings.dart';
import 'package:e_commerce_figma/core/text_styles.dart';
import 'package:e_commerce_figma/data/products.dart';
import 'package:e_commerce_figma/presentation/features/products/view/widgets/page_indicators_dots.dart';
import 'package:e_commerce_figma/presentation/features/products/view/widgets/subtotal_column.dart';
import 'package:e_commerce_figma/presentation/features/products/view/widgets/top_icons_row.dart';
import 'package:e_commerce_figma/presentation/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.colorBlack.withAlpha(120),
                    //
                    blurRadius: 120,
                    spreadRadius: 0.7,
                  ),
                ],
                //
                image: DecorationImage(image: NetworkImage(product.image.toString()), fit: BoxFit.contain),
              ),
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  int sensitivity = 8;
                  if (details.delta.dy < -sensitivity) {
                    // context.go(AppRoutes.swipedUp, extra: products);
                  }
                },
                child: Column(
                  children: [
                    const TopIconsRow(),
                    const Spacer(),
                    Column(
                      children: [
                        SvgPicture.asset(AppAssets.swipIcon),
                        //
                        Text(AppStrings.swipeUpForDetails, style: Styles.style14whiteM),
                        //
                        const SizedBox(height: 10), const PageIndicatorsDots(),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: const BoxDecoration(color: AppColors.whiteBackground),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //
                  SubtotalColumn(products: product),
                  //
                  SizedBox(
                    width: 150,
                    //
                    child: CustomButton(text: AppStrings.continueText, onPressed: () {}, backgroundColor: AppColors.mainColor, width: null, height: null,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

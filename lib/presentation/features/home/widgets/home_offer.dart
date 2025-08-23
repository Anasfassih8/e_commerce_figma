import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_figma/core/app_assets.dart';
import 'package:e_commerce_figma/core/app_colors.dart';
import 'package:e_commerce_figma/core/app_strings.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.colorGreyMed,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Text(
                  AppStrings.shopWithUs,
                  style: TextStyle(
                    fontSize: 22,  
                  ),
                ),
                Text(AppStrings.sale40,style:TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.w700, 
                    
                  )),
                Row(
                  children: [
                    Text(AppStrings.shopNow,style:TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.w700, 
                  )),

                    //
                    SvgPicture.asset(AppAssets.arrow),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Image.asset(AppAssets.manphoto, height: 150, width: 150),
        ],
      ),
    );
  }
}

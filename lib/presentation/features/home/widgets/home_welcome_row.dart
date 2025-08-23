// import 'package:e_commerce_figma/presentation/features/cart/view/cart_screen.dart';
import 'package:e_commerce_figma/presentation/features/home/widgets/home_welcome_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_figma/core/app_assets.dart';



class WelcomingRow extends StatelessWidget {
  const WelcomingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HomeWelcomeHeader(),
        //
        GestureDetector(
          // onTap: () {
          //   MaterialPageRoute(builder: (context) => CartScreen());
          // },
          child: SvgPicture.asset(AppAssets.bag),
        ),
      ],
    );
  }
}
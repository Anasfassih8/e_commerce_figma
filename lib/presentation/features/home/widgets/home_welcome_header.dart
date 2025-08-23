import 'package:flutter/material.dart';
import 'package:e_commerce_figma/core/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWelcomeHeader extends StatefulWidget {
  const HomeWelcomeHeader({super.key});

  @override
  State<HomeWelcomeHeader> createState() => _HomeWelcomeHeaderState();
}

class _HomeWelcomeHeaderState extends State<HomeWelcomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(AppStrings.welcome),

        const Padding(padding: EdgeInsets.all(5)),

        Text(
          AppStrings.username,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

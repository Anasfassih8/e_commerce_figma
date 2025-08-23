import 'package:e_commerce_figma/core/app_assets.dart';
import 'package:e_commerce_figma/core/app_strings.dart';
import 'package:e_commerce_figma/core/managers/theme_manager.dart';
import 'package:e_commerce_figma/data/products.dart';
import 'package:e_commerce_figma/presentation/features/home/widgets/categories_list.dart';
import 'package:e_commerce_figma/presentation/features/home/widgets/home_offer.dart';
import 'package:e_commerce_figma/presentation/features/home/widgets/home_welcome_header.dart';
import 'package:e_commerce_figma/presentation/features/home/widgets/home_welcome_row.dart';
import 'package:e_commerce_figma/presentation/widgets/app_textFields.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  final TextEditingController field = TextEditingController();
  

 bool isLoading = true;
  bool isValid = false;
  List<Product> products = [];

  @override

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bool isDarkMode = ThemeManager.themeNotifier.value == ThemeMode.dark;
   return Scaffold(
    extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            const WelcomingRow(),
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              //
              child: CustomTextField(
                controller: field,
                hintText: AppStrings.searchHelper,
                onChange: (value) {
                  setState(() {});
                },
                prefixIcon: InkWell(child: Transform.scale(scale: 0.5, child: SvgPicture.asset(AppAssets.search))),
              ),
            ),

            const OffersCard(),

            const CategoriesList(),

            
          ],
        ),
      ),
   );
  }
}


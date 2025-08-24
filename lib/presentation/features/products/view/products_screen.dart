import 'package:e_commerce_figma/core/app_assets.dart';
import 'package:e_commerce_figma/core/app_strings.dart';
import 'package:e_commerce_figma/core/managers/theme_manager.dart';
import 'package:e_commerce_figma/data/products.dart';
import 'package:e_commerce_figma/presentation/features/products/controller/product_controller.dart';
import 'package:e_commerce_figma/presentation/features/products/view/widgets/product_item_card.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isLoading = true;
  final ProductController productController = ProductController();
  List<Product> products = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    final results = await productController.getProducts();
    setState(() {
      products = results;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = ThemeManager.themeNotifier.value == ThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.products),
        actions: [
          //
          Switch(
            value: isDarkMode,
            //
            onChanged: (value) => ThemeManager.toggleTheme(),
          ),
        ],
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: products.length,
                        separatorBuilder: (context, index) => SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return ProductItemCard(product: product);
                        },
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}
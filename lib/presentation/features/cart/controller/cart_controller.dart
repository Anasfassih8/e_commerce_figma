import 'package:dio/dio.dart';
import 'package:e_commerce_figma/core/api/api_constants.dart';
import 'package:e_commerce_figma/core/api/api_service.dart';
import 'package:e_commerce_figma/data/cart.dart';
import 'package:e_commerce_figma/data/products.dart';

class CartController {
  final ApiService apiService=ApiService();

  Future <List<Cart>> getProducts() async{
      try{
        final response = await apiService.get(path: ApiConstants.carts);
        final List<dynamic> dataList = response.data as List;
        if (response.statusCode == 200) {
        return dataList.map((e) => Cart.fromJson(e)).toList();
      }
      return [];

      }catch(e){
        rethrow;
      }

  }

  Future <List<dynamic>> fetchItems() async{
  
      final response = await apiService.get(path: ApiConstants.cartItems);
      final List<Cart> cart = (response.data as List).map((json) => Cart.fromJson(json)).toList();
    List<Product> cartProducts = await getCartProducts(cart);
    return cartProducts;
    
  }

  Future<List<Product>> getCartProducts(List<Cart> cart) async {
    final response = await apiService.get(path: ApiConstants.products);
    final List<Product> allProducts = (response.data as List).map((json) => Product.fromJson(json)).toList();
    final List<Product> cartProducts =
        cart
            .expand((cart) => cart.products as List)
            .map((cartItem) {
              final product = allProducts.firstWhere((p) => p.id == cartItem.productId, orElse: () => Product(id: null, title: "", price: 0.0, description: "", category: "", image: "", quantity: 0));
              return product.id != null ? Product(id: product.id, title: product.title, price: product.price, description: product.description, category: product.category, image: product.image, quantity: cartItem.quantity) : null;
            })
            .whereType<Product>()
            .toList();
    return cartProducts;
  }
}
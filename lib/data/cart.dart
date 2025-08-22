import 'package:e_commerce_figma/core/api/api_keys.dart';
import 'package:e_commerce_figma/data/item.dart';

class Cart {
  
  final int id;
  
  final int userId;
  
  final DateTime date;
 
  final List<CartItem> products;

  Cart({required this.id, required this.date, required this.userId, required this.products});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(id: json[ApiKeys.id], userId: json[ApiKeys.userID], date: DateTime.parse(json[ApiKeys.date]), products: List<CartItem>.from(json[ApiKeys.products].map((x) => CartItem.fromJson(x))));
  }
}
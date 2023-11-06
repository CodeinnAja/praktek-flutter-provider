import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  late Map<String, CartItem> _item;

  Map<String, CartItem> get item => _item;

  void addCart(String? productId, String? title, double? price) {
    if (_item.containsKey(productId)) {
      _item.update(
          productId!,
          (value) => CartItem(
              id: value.id,
              title: value.title,
              price: value.price,
              quantity: value.quantity! + 1));
    } else {
      _item.putIfAbsent(
        productId!,
        () => CartItem(
            id: DateTime.now().toString(),
            title: title,
            price: price,
            quantity: 1),
      );
    }
    notifyListeners();
  }
}

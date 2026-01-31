import 'package:flutter/material.dart';
import 'product.dart';

class ProductNotifier extends ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  ProductNotifier() {
    loadProduct();
  }

  void loadProduct() async {
    await Future.delayed(Duration(seconds: 1));
    _product = generateProduct();
    notifyListeners();
  }
}

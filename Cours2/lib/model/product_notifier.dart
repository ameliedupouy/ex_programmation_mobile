import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'product.dart';

class ProductNotifier extends ChangeNotifier {
  final Dio _dio = Dio();
  Product? _product;

  Product? get product => _product;

  ProductNotifier() {
    loadProduct();
  }

  Future<void> loadProduct() async {
    try {
      final response = await _dio.get(
        'https://api.formation-flutter.fr/v2/getProduct',
        queryParameters: {'barcode': '5000159484695'},
      );

      final data = response.data;

      debugPrint('JSON reçu : $data');

      final productJson = data['response'];

      _product = Product.fromJson(productJson);

      debugPrint('NAME = ${_product?.name}');
      debugPrint('BRANDS = ${_product?.brands}');
      debugPrint('NUTRI = ${_product?.nutriScore}');
      debugPrint('NovaScore = ${_product?.novaScore}');
      debugPrint('GreenScore = ${_product?.greenScore}');

      notifyListeners();
    } catch (e) {
      debugPrint('Erreur lors du chargement du produit : $e');
    }
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:market_to_go/data/models/product_model.dart';
import 'package:market_to_go/data/repository/product_repository.dart';

class ProductStore {
  final IProductRepository repository;
  //Loading
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  //state screen
  final ValueNotifier<List<ProductModel>> state = ValueNotifier([]);

  // error

  final ValueNotifier<String> erro = ValueNotifier("");

  ProductStore({required this.repository});

  Future getProducts() async {
    isLoading.value = true;
    try {
      final result = await repository.getProducts();
      state.value = result;
    } catch (e) {
      erro.value = "";
    }
    isLoading.value = false;
  }

  createProduct({required ProductModel body}) {
    try {
      repository.createProduct(body);
    } catch (e) {
      log(e.toString());
    }
  }
}

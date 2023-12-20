import 'dart:convert';

import 'package:market_to_go/data/http/http_client.dart';
import 'package:market_to_go/data/models/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getProducts();
  createProduct(ProductModel body);
}

class ProductRepository implements IProductRepository {
  final IHttpClient client;

  ProductRepository({required this.client});

  @override
  Future<List<ProductModel>> getProducts() async {
    final response =
        await client.get(url: 'http://10.0.2.2:5000/products/find');

    if (response.statusCode == 200) {
      final List<ProductModel> products = [];

      final body = jsonDecode(response.body);

      body['products'].map((item) {
        final ProductModel product = ProductModel.fromMap(item);
        products.add(product);
      }).toList();
      return products;
    } else {
      throw Exception("Error");
    }
  }

  @override
  createProduct(ProductModel body) async {
    final Map<String, dynamic> requestBody = {
      "name": body.name,
      "price": body.price,
      "finished_date": "${DateTime.now()}",
      "market": body.market
    };

    final jsonString = jsonEncode(requestBody);
    final response = await client.post(
        url: 'http://10.0.2.2:5000/products/register', body: jsonString);

    if (response.statusCode == 200) {
    } else {
      throw Exception("Error");
    }
  }
}

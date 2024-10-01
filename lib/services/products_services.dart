import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product_model.dart';

class ProductService {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonData = json.decode(jsonString) as List;
      return jsonData.map((product) => Product.fromJson(product)).toList();
    } else {
      return null;
    }
  }
}

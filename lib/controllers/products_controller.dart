import 'package:get/get.dart';
import '../models/product_model.dart';
import '../services/products_services.dart';

class ProductsController extends GetxController {
  var products = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var result = await ProductService.fetchProducts();
      if (result != null) {
        products.assignAll(result);
      }
    } finally {
      isLoading(false);
    }
  }
}

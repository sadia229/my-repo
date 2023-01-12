import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/model/products_model.dart';
import 'package:practice/apps/cart/repository/products_repository.dart';

final productsNotifyProvider =
    StateNotifierProvider<ProductsNotifier, List<Data>>((ref) {
  return ProductsNotifier(productsRepository: ProductsRepository());
});

class ProductsNotifier extends StateNotifier<List<Data>> {
  ProductsRepository productsRepository;

  ProductsNotifier({required this.productsRepository}) : super([]) {
    getAllProducts();
  }

  getAllProducts() async {
    var response = await productsRepository.getProductsInfo();
    List<Data> productData = response.data!.map((e) => e).toList();
    state = productData;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/apps/cart/repository/cart_repository.dart';

final cartNotifyProvider =
    StateNotifierProvider<CartNotifier, List<Data>>((ref) {
  return CartNotifier(cartRepository: CartRepository());
});

class CartNotifier extends StateNotifier<List<Data>> {
  CartRepository cartRepository;

  CartNotifier({required this.cartRepository}) : super([]) {
    getAllCart();
  }

  getAllCart() async {
    var response = await cartRepository.getCartInfo();
    List<Data> cartData = response.data!.map((e) => e).toList();
    state = cartData;
  }

   addCart({Data? payload}) async {
    CartModel response = await cartRepository.saveCart(payload: payload);
    List<Data> data = response.data!.map((e) => e).toList();
    state = [...state, response];
  }
}

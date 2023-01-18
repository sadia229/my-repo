import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/apps/cart/repository/auth_repository.dart';
import 'package:practice/apps/cart/repository/cart_repository.dart';

final authNotifyProvider =
    StateNotifierProvider<AuthNotifier, List<Data>>((ref) {
  return AuthNotifier(authRepository: AuthRepository());
});

class AuthNotifier extends StateNotifier<List<Data>> {
  AuthRepository authRepository;

  AuthNotifier({required this.authRepository}) : super([]) {

  }

  addCart({Data? payload}) async {
    CartModel response = await authRepository.login(payload: payload);
    List<Data> data = response.data!.map((e) => e).toList();
    //state = [...state, response];
  }
}

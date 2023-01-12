import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/general/api/base_client.dart';
import 'package:practice/general/constants/urls.dart';

import '../../../general/helpers/dio_exceptions.dart';

CartModel? cartModel;

class CartRepository {
   saveCart({var payload}) async {
    try {
      var response =
          await BaseClient.post(url: Urls.addToCartUrl, payload: payload);
      if (response.statusCode == 200) {
        CartModel cartModel = CartModel.fromJson(response.data);
         return cartModel;

      } else {
        throw "Error";
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      print(errorMessage);
      rethrow;
    }
  }

  Future<CartModel> getCartInfo({context}) async {
    try {
      var response = await BaseClient.get(
        url: Urls.cartViewUrl,
      );
      if (response.statusCode == 200) {
        cartModel = CartModel.fromJson(response.data);
      }
      if (response.statusCode == 404) {
        cartModel = CartModel.fromJson(response.data);
        log('No address data found');
        print("data null");
      }
      return cartModel!;
    } on DioError catch (e) {
      rethrow;
    }
  }
}

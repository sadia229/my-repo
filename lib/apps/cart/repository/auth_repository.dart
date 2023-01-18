import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/general/api/base_client.dart';
import 'package:practice/general/constants/urls.dart';

import '../../../general/helpers/dio_exceptions.dart';


class AuthRepository {
  login({var payload}) async {
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
}

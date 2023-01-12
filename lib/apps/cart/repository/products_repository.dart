import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/apps/cart/model/cart_model.dart';
import 'package:practice/general/api/base_client.dart';
import 'package:practice/general/constants/urls.dart';

import '../model/products_model.dart';

ProductsModel? productsModel;

class ProductsRepository {
  Future<ProductsModel> getProductsInfo({context}) async {
    try {
      var response = await BaseClient.get(
        url: Urls.productViewUrl,
      );
      if (response.statusCode == 200) {
        productsModel = ProductsModel.fromJson(response.data);
      }
      if (response.statusCode == 404) {
        productsModel = ProductsModel.fromJson(response.data);
        log('No address data found');
        print("data null");
      }
      return productsModel!;
    } on DioError catch (e) {
      rethrow;
    }
  }
}

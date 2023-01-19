import 'package:dio/dio.dart';
import 'package:practice/general/api/base_client.dart';
import 'package:practice/general/constants/urls.dart';

import '../../../general/helpers/dio_exceptions.dart';

class AuthRepository {
  static logIn({payload}) async {
    try {
      var response =
          await BaseClient.post(url: Urls.loginUrl, payload: payload);
      return response;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
    }
  }

  static tokenPass({payload}) async {
    try {
      var response =
      await BaseClient.post(url: Urls.tokenUrl, payload: payload);
      return response;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
    }
  }
}

import 'package:dio/dio.dart' as dio;
import 'package:practice/apps/cart/repository/auth_repository.dart';

class FirebaseNotifier {
  tokenPass(String token) async {
    dio.FormData formData = dio.FormData.fromMap({
      'token': token,
    });
    dio.Response response = await AuthRepository.tokenPass(payload: formData);
    if (response.statusCode == 200) {
      print(response);
    } else {
      print("status code error from login screen");
      print(response);
    }
  }
}

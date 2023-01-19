import 'package:dio/dio.dart' as dio;
import 'package:practice/apps/cart/repository/auth_repository.dart';
import '../../../general/helpers/shared_prefs.dart';

class AuthNotifier {
  login(String email, String password) async {
    dio.FormData formData = dio.FormData.fromMap({
      'email': email,
      'password': password,
    });
    dio.Response response = await AuthRepository.logIn(payload: formData);
    if (response.data['status'] == true) {
      await SharedPrefs.saveToken(response.data['token']);
    } else {
      print("status code error from sadia");
    }
  }
}

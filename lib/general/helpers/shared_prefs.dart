import 'package:practice/general/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString(Constants.authToken);
    print("get token : $token");
    return token ?? '';
  }

  static saveToken(token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constants.authToken, token);
    print("save token : ${prefs.setString(Constants.authToken, token)}");
  }

  static void removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constants.authToken, '');
  }
}

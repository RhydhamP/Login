import 'package:login/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDatabase {
  Future<void> setAuthToken(String authTokenValue) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(authTokenKey, authTokenValue);
    return;
  }

  Future<void> getAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.getString(authTokenKey);
    return;
  }
}

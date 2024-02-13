import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../base_view_model.dart';
import '../../repository/login_repository.dart';
import '../../utils/constant.dart';

class LoginViewModel extends BaseViewModel {
  final LoginRepository loginRepository;
  LoginViewModel(this.loginRepository);
  final TextEditingController email =
      TextEditingController(text: "rhydham.p@medkart.in");
  final TextEditingController password =
      TextEditingController(text: "12345678");

  ValueNotifier<bool> changeButton = ValueNotifier(false);

// Call login api
  callLoginApi({required Function onSuccess, required Function onFail}) async {
    try {
      await loginRepository
          .loginApi({"email": email.text, "password": password.text}).then(
              (response) async {
        print(response.data);
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        await prefs.setString(
            authTokenKey, response.data['user']['auth']['token']);

        onSuccess.call();
      });
    } catch (e) {
      onFail.call();
    }
  }
}

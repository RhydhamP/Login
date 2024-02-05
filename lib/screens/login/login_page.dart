import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/vm_provider.dart';
import '../../utils/routes.dart';
import 'login_view_model.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final dio = Dio();

  bool changeButton = false;
  // String email = "";
  // String password = "";

  // loginApi() async {
  //   // print('Call api');
  //   var response = await dio.post('https://opsapi-v2.mkart.dev/api/v1/login',
  //       data: {"email": _email.text.trim(), "password": _password.text.trim()},
  //       options: Options(headers: {
  //         "Authorization": "Bearer 905|2NzAx4luLV2DQsb9gFzsKAV1YF7xFSfvxs0m0OLn"
  //       }));

  //   final SharedPreferences prefs = await SharedPreferences.getInstance();

  //   await prefs.setString(authToken, response.data['user']['auth']['token']);

  //   // var loginModel = LoginModel.fromJson(response.data);
  //   // final token = loginModel.user.auth.token.toString();

  //   print('Response ${response.data['user']['auth']['token']}');
  // }

  final formKey = GlobalKey<FormState>();

  // moveToHome(BuildContext context) async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       changeButton = true;
  //     });
  //     await Future.delayed(Duration(seconds: 1));
  //     loginApi(authToken, _email.text, _password.text);
  //     await Navigator.pushNamed(context, MyRoutes.homeRoute);
  //     setState(() {
  //       changeButton = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(loginVm);
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Image.asset("assets/images/Logo.png", fit: BoxFit.cover),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Login to MK Retail Experience",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 22.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: provider.email,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter valid Email";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        provider.email.text = value;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: provider.password,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 8) {
                          return "Password length should be greater than 6";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        provider.password.text = value;
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 20 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(
                            context, formKey, changeButton, provider),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 50 : 120,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  moveToHome(BuildContext context, GlobalKey<FormState> formKey,
      bool changeButton, LoginViewModel provider) async {
    if (formKey.currentState!.validate()) {
      changeButton = true;
      provider.callLoginApi(
          onFail: () {},
          onSuccess: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              MyRoutes.homeRoute,
              (route) => false,
            );
          });

      changeButton = false;
    }
  }
}

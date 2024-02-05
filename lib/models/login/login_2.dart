import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/login/login_3.dart';

part 'login_2.freezed.dart';
part 'login_2.g.dart';

@freezed
class LoginModel2 with _$LoginModel2 {
  factory LoginModel2({
    required Map<String, dynamic> profile,
    required Map<String, LoginModel3> auth,
  }) = _LoginModel2;

  factory LoginModel2.fromJson(Map<String, Object?> json) =>
      _$LoginModel2FromJson(json);
}

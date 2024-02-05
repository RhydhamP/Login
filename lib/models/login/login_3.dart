import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_3.freezed.dart';
part 'login_3.g.dart';

@freezed
class LoginModel3 with _$LoginModel3 {
  factory LoginModel3({
    required Map<String, String> token,
  }) = _LoginModel3;

  factory LoginModel3.fromJson(Map<String, Object?> json) =>
      _$LoginModel3FromJson(json);
}

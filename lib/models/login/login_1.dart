import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/login/login_2.dart';

part 'login_1.freezed.dart';
part 'login_1.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({ 
    required int code,
    required String type,
    required String message,
    required Map<String, LoginModel2> user,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) =>
      _$LoginModelFromJson(json);
}

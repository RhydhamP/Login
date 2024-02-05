// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModel2Impl _$$LoginModel2ImplFromJson(Map<String, dynamic> json) =>
    _$LoginModel2Impl(
      profile: json['profile'] as Map<String, dynamic>,
      auth: (json['auth'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, LoginModel3.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$LoginModel2ImplToJson(_$LoginModel2Impl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'auth': instance.auth,
    };

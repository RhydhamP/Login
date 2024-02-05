// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      user: (json['user'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, LoginModel2.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'user': instance.user,
    };

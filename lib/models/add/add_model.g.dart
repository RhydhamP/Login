// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddModelImpl _$$AddModelImplFromJson(Map<String, dynamic> json) =>
    _$AddModelImpl(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      Product: AddModel1.fromJson(json['Product'] as Map<String, dynamic>),
      Availability:
          AddModel3.fromJson(json['Availability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddModelImplToJson(_$AddModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'Product': instance.Product,
      'Availability': instance.Availability,
    };

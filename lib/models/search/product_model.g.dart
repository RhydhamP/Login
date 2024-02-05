// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      is_banned: json['is_banned'] as bool,
      is_discontinued: json['is_discontinued'] as bool,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mrp: json['mrp'] as num,
      sales_price: json['sales_price'] as num,
      content: json['content'] as String,
      package_type: json['package_type'] as String,
      package_size: json['package_size'] as int,
      ws_code: json['ws_code'] as int,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_banned': instance.is_banned,
      'is_discontinued': instance.is_discontinued,
      'images': instance.images,
      'mrp': instance.mrp,
      'sales_price': instance.sales_price,
      'content': instance.content,
      'package_type': instance.package_type,
      'package_size': instance.package_size,
      'ws_code': instance.ws_code,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Add _$AddFromJson(Map<String, dynamic> json) => Add(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      product: AddProduct.fromJson(json['Product'] as Map<String, dynamic>),
      availability:
          Availability.fromJson(json['Availability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddToJson(Add instance) => <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'Product': instance.product,
      'Availability': instance.availability,
    };

AddProduct _$AddProductFromJson(Map<String, dynamic> json) => AddProduct(
      id: json['id'] as int,
      name: json['name'] as String,
      isBanned: json['is_banned'] as bool?,
      isDiscontinued: json['is_discontinued'] as bool?,
      images: (json['images'] as List<dynamic>)
          .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      mrp: json['mrp'] as num,
      salesPrice: json['sales_price'] as num,
      content: json['content'] as String,
      packageType: json['package_type'] as String,
      packageSize: json['package_size'] as int,
      wsCode: json['ws_code'] as int,
    );

Map<String, dynamic> _$AddProductToJson(AddProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_banned': instance.isBanned,
      'is_discontinued': instance.isDiscontinued,
      'images': instance.images,
      'mrp': instance.mrp,
      'sales_price': instance.salesPrice,
      'content': instance.content,
      'package_type': instance.packageType,
      'package_size': instance.packageSize,
      'ws_code': instance.wsCode,
    };

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) => ProductImage(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ProductImageToJson(ProductImage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Availability _$AvailabilityFromJson(Map<String, dynamic> json) => Availability(
      wsRes: json['wsRes'] as bool?,
      wsQuantity: json['wsQuantity'] as num,
      pharmaRes: json['pharmaRes'] as bool?,
    );

Map<String, dynamic> _$AvailabilityToJson(Availability instance) =>
    <String, dynamic>{
      'wsRes': instance.wsRes,
      'wsQuantity': instance.wsQuantity,
      'pharmaRes': instance.pharmaRes,
    };

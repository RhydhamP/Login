// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) => Search(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'products': instance.products,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      isBanned: json['is_banned'] as bool,
      isDiscontinued: json['is_discontinued'] as bool,
      images: (json['images'] as List<dynamic>)
          .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      mrp: (json['mrp'] as num).toDouble(),
      salesPrice: (json['sales_price'] as num).toDouble(),
      content: json['content'] as String,
      packageType: json['package_type'] as String,
      packageSize: json['package_size'] as int,
      wsCode: json['ws_code'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
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

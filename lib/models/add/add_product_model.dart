import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_product_model.g.dart';

@JsonSerializable()
class Add extends Equatable {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'Product')
  final AddProduct product;
  @JsonKey(name: 'Availability')
  final Availability availability;

  const Add(
      {required this.code,
      required this.type,
      required this.message,
      required this.product,
      required this.availability});

  factory Add.fromJson(Map<String, Object?> json) => _$AddFromJson(json);

  Map<String, dynamic> toJson() => _$AddToJson(this);

  @override
  List<Object?> get props => [code, type, message, product, availability];
}

@JsonSerializable()
class AddProduct extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'is_banned')
  final bool? isBanned;
  @JsonKey(name: 'is_discontinued')
  final bool? isDiscontinued;
  @JsonKey(name: 'images')
  final List<ProductImage> images;
  @JsonKey(name: 'mrp')
  final num mrp;
  @JsonKey(name: 'sales_price')
  final num salesPrice;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'package_type')
  final String packageType;
  @JsonKey(name: 'package_size')
  final int packageSize;
  @JsonKey(name: 'ws_code')
  final int wsCode;

  const AddProduct({
    required this.id,
    required this.name,
    required this.isBanned,
    required this.isDiscontinued,
    required this.images,
    required this.mrp,
    required this.salesPrice,
    required this.content,
    required this.packageType,
    required this.packageSize,
    required this.wsCode,
  });

  factory AddProduct.fromJson(Map<String, Object?> json) =>
      _$AddProductFromJson(json);

  Map<String, dynamic> toJson() => _$AddProductToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        isBanned,
        isDiscontinued,
        images,
        mrp,
        salesPrice,
        content,
        packageType,
        packageSize,
        wsCode
      ];
}

@JsonSerializable()
class ProductImage extends Equatable {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'url')
  final String url;

  const ProductImage({
    required this.name,
    required this.url,
  });

  factory ProductImage.fromJson(Map<String, Object?> json) =>
      _$ProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageToJson(this);

  @override
  List<Object?> get props => [name, url];
}

@JsonSerializable()
class Availability extends Equatable {
  @JsonKey(name: 'wsRes')
  final bool? wsRes;
  @JsonKey(name: 'wsQuantity')
  final num wsQuantity;
  @JsonKey(name: 'pharmaRes')
  final bool? pharmaRes;

  const Availability({
    required this.wsRes,
    required this.wsQuantity,
    required this.pharmaRes,
  });

  factory Availability.fromJson(Map<String, Object?> json) =>
      _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);

  @override
  List<Object?> get props => [wsRes, wsQuantity, pharmaRes];
}

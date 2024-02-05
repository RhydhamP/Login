import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/search/images_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required int id,
    required String name,
    required bool is_banned,
    required bool is_discontinued,
    required List<ImagesModel> images,
    required num mrp,
    required num sales_price,
    required String content,
    required String package_type,
    required int package_size, 
    required int ws_code, 
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}

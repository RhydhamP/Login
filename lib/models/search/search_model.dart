import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';
part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel({ 
    required int code,
    required String type,
    required String message,
    required List<ProductModel> products,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, Object?> json) =>
      _$SearchModelFromJson(json);
}

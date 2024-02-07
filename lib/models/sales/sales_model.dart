import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sales_model.freezed.dart';
part 'sales_model.g.dart';

@freezed
class SalesOrderResponse with _$SalesOrderResponse {
  const factory SalesOrderResponse({
    required int code,
    required String type,
    required String message,
    required List<SalesOrderItem> salesOrdersItems,
    required Meta meta,
  }) = _SalesOrderResponse;

  factory SalesOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderResponseFromJson(json);
}

@freezed
class SalesOrderItem with _$SalesOrderItem {
  const factory SalesOrderItem({
    required int product_code,
    required int ws_code,
    required String product_name,
    required int ordered_quantity,
    required int fulfilled_quantity,
    required String so_date,
    required String so_created_at,
    required String status,
    required String so_number,
    required String? doc_number,
    required String store_name,
    required String store_code,
    required String remark,
  }) = _SalesOrderItem;

  factory SalesOrderItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderItemFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int current_page,
    required int per_page,
    required int last_page,
    required int total,
    required int current_page_record,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

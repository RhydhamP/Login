import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sales_model.g.dart';

@JsonSerializable()
class SalesOrderResponse extends Equatable {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'sales_orders_items')
  final List<SalesOrderItem> salesOrderItem;
  @JsonKey(name: 'meta')
  final Meta meta;

  const SalesOrderResponse({
    required this.code,
    required this.type,
    required this.message,
    required this.salesOrderItem,
    required this.meta,
  });

  factory SalesOrderResponse.fromJson(Map<String, Object?> json) =>
      _$SalesOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SalesOrderResponseToJson(this);

  @override
  List<Object?> get props => [code, type, message, salesOrderItem, meta];
}

@JsonSerializable()
class SalesOrderItem extends Equatable {
  @JsonKey(name: 'product_code')
  final int productCode;
  @JsonKey(name: 'ws_code')
  final int wsCode;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'ordered_quantity')
  final int orderedQuantity;
  @JsonKey(name: 'fulfilled_quantity')
  final int fulfilledQuantity;
  @JsonKey(name: 'so_date')
  final String soDate;
  @JsonKey(name: 'so_created_at')
  final String soCreatedAt;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'so_number')
  final String soNumber;
  @JsonKey(name: 'doc_number')
  final dynamic docNumber;
  @JsonKey(name: 'store_name')
  final String storeName;
  @JsonKey(name: 'store_code')
  final String storeCode;
  @JsonKey(name: 'remark')
  final String remark;

  const SalesOrderItem({
    required this.productCode,
    required this.wsCode,
    required this.productName,
    required this.orderedQuantity,
    required this.fulfilledQuantity,
    required this.soDate,
    required this.soCreatedAt,
    required this.status,
    required this.soNumber,
    required this.docNumber,
    required this.storeName,
    required this.storeCode,
    required this.remark,
  });

  factory SalesOrderItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$SalesOrderItemToJson(this);

  @override
  List<Object?> get props => [
        productCode,
        wsCode,
        productName,
        orderedQuantity,
        fulfilledQuantity,
        soDate,
        soCreatedAt,
        status,
        soNumber,
        docNumber,
        storeName,
        storeCode,
        remark
      ];
}

@JsonSerializable()
class Meta extends Equatable {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'current_page_record')
  final int currentPageRecord;

  const Meta({
    required this.currentPage,
    required this.perPage,
    required this.lastPage,
    required this.total,
    required this.currentPageRecord,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  @override
  List<Object?> get props =>
      [currentPage, perPage, lastPage, total, currentPageRecord];
}

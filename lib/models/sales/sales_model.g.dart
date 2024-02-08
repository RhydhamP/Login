// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderResponse _$SalesOrderResponseFromJson(Map<String, dynamic> json) =>
    SalesOrderResponse(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      salesOrderItem: (json['sales_orders_items'] as List<dynamic>)
          .map((e) => SalesOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SalesOrderResponseToJson(SalesOrderResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'sales_orders_items': instance.salesOrderItem,
      'meta': instance.meta,
    };

SalesOrderItem _$SalesOrderItemFromJson(Map<String, dynamic> json) =>
    SalesOrderItem(
      productCode: json['product_code'] as int,
      wsCode: json['ws_code'] as int,
      productName: json['product_name'] as String,
      orderedQuantity: json['ordered_quantity'] as int,
      fulfilledQuantity: json['fulfilled_quantity'] as int,
      soDate: json['so_date'] as String,
      soCreatedAt: json['so_created_at'] as String,
      status: json['status'] as String,
      soNumber: json['so_number'] as String,
      docNumber: json['doc_number'],
      storeName: json['store_name'] as String,
      storeCode: json['store_code'] as String,
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$SalesOrderItemToJson(SalesOrderItem instance) =>
    <String, dynamic>{
      'product_code': instance.productCode,
      'ws_code': instance.wsCode,
      'product_name': instance.productName,
      'ordered_quantity': instance.orderedQuantity,
      'fulfilled_quantity': instance.fulfilledQuantity,
      'so_date': instance.soDate,
      'so_created_at': instance.soCreatedAt,
      'status': instance.status,
      'so_number': instance.soNumber,
      'doc_number': instance.docNumber,
      'store_name': instance.storeName,
      'store_code': instance.storeCode,
      'remark': instance.remark,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      currentPage: json['current_page'] as int,
      perPage: json['per_page'] as int,
      lastPage: json['last_page'] as int,
      total: json['total'] as int,
      currentPageRecord: json['current_page_record'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'last_page': instance.lastPage,
      'total': instance.total,
      'current_page_record': instance.currentPageRecord,
    };

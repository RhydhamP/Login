// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderResponseImpl _$$SalesOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SalesOrderResponseImpl(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      salesOrdersItems: (json['salesOrdersItems'] as List<dynamic>)
          .map((e) => SalesOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SalesOrderResponseImplToJson(
        _$SalesOrderResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'salesOrdersItems': instance.salesOrdersItems,
      'meta': instance.meta,
    };

_$SalesOrderItemImpl _$$SalesOrderItemImplFromJson(Map<String, dynamic> json) =>
    _$SalesOrderItemImpl(
      product_code: json['product_code'] as int,
      ws_code: json['ws_code'] as int,
      product_name: json['product_name'] as String,
      ordered_quantity: json['ordered_quantity'] as int,
      fulfilled_quantity: json['fulfilled_quantity'] as int,
      so_date: json['so_date'] as String,
      so_created_at: json['so_created_at'] as String,
      status: json['status'] as String,
      so_number: json['so_number'] as String,
      doc_number: json['doc_number'],
      store_name: json['store_name'] as String,
      store_code: json['store_code'] as String,
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$SalesOrderItemImplToJson(
        _$SalesOrderItemImpl instance) =>
    <String, dynamic>{
      'product_code': instance.product_code,
      'ws_code': instance.ws_code,
      'product_name': instance.product_name,
      'ordered_quantity': instance.ordered_quantity,
      'fulfilled_quantity': instance.fulfilled_quantity,
      'so_date': instance.so_date,
      'so_created_at': instance.so_created_at,
      'status': instance.status,
      'so_number': instance.so_number,
      'doc_number': instance.doc_number,
      'store_name': instance.store_name,
      'store_code': instance.store_code,
      'remark': instance.remark,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      current_page: json['current_page'] as int,
      per_page: json['per_page'] as int,
      last_page: json['last_page'] as int,
      total: json['total'] as int,
      current_page_record: json['current_page_record'] as int,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'per_page': instance.per_page,
      'last_page': instance.last_page,
      'total': instance.total,
      'current_page_record': instance.current_page_record,
    };

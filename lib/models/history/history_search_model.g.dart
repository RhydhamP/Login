// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHistoryResponse _$SearchHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    SearchHistoryResponse(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      searchReport: (json['search_reports'] as List<dynamic>)
          .map((e) => SearchReport.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchHistoryResponseToJson(
        SearchHistoryResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'search_reports': instance.searchReport,
      'meta': instance.meta,
    };

SearchReport _$SearchReportFromJson(Map<String, dynamic> json) => SearchReport(
      date: json['date'] as String,
      storeName: json['store_name'] as String?,
      storeCode: json['store_code'] as String?,
      searchKeyword: json['search_keyword'] as String,
      productName: json['product_name'] as String,
      searchedQty: json['searched_qty'] as int,
      packageSize: json['package_size'] as int,
      packageType: json['package_type'] as String,
      wsCode: json['ws_code'] as int,
      mrp: json['mrp'] as String,
      availableQty: json['available_qty'] as int,
      tat: json['tat'] as String,
      availableAtWarehouse: json['available_at_warehouse'] as String,
      availableAtVendor: json['available_at_vendor'] as String,
    );

Map<String, dynamic> _$SearchReportToJson(SearchReport instance) =>
    <String, dynamic>{
      'date': instance.date,
      'store_name': instance.storeName,
      'store_code': instance.storeCode,
      'search_keyword': instance.searchKeyword,
      'product_name': instance.productName,
      'searched_qty': instance.searchedQty,
      'package_size': instance.packageSize,
      'package_type': instance.packageType,
      'ws_code': instance.wsCode,
      'mrp': instance.mrp,
      'available_qty': instance.availableQty,
      'tat': instance.tat,
      'available_at_warehouse': instance.availableAtWarehouse,
      'available_at_vendor': instance.availableAtVendor,
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

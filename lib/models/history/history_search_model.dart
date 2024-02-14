import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_search_model.g.dart';

@JsonSerializable()
class SearchHistoryResponse extends Equatable {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'search_reports')
  final List<SearchReport> searchReport;
  @JsonKey(name: 'meta')
  final Meta meta;

  SearchHistoryResponse(
      {required this.code,
      required this.type,
      required this.message,
      required this.searchReport,
      required this.meta});

  factory SearchHistoryResponse.fromJson(Map<String, Object?> json) =>
      _$SearchHistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchHistoryResponseToJson(this);

  @override
  List<Object?> get props => [code, type, message, searchReport, meta];
}

@JsonSerializable()
class SearchReport extends Equatable {
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'store_name')
  final String? storeName;
  @JsonKey(name: 'store_code')
  final String? storeCode;
  @JsonKey(name: 'search_keyword')
  final String searchKeyword;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'searched_qty')
  final int searchedQty;
  @JsonKey(name: 'package_size')
  final int packageSize;
  @JsonKey(name: 'package_type')
  final String packageType;
  @JsonKey(name: 'ws_code')
  final int wsCode;
  @JsonKey(name: 'mrp')
  final String mrp;
  @JsonKey(name: 'available_qty')
  final int availableQty;
  @JsonKey(name: 'tat')
  final String tat;
  @JsonKey(name: 'available_at_warehouse')
  final String availableAtWarehouse;
  @JsonKey(name: 'available_at_vendor')
  final String availableAtVendor;

  SearchReport(
      {required this.date,
      required this.storeName,
      required this.storeCode,
      required this.searchKeyword,
      required this.productName,
      required this.searchedQty,
      required this.packageSize,
      required this.packageType,
      required this.wsCode,
      required this.mrp,
      required this.availableQty,
      required this.tat,
      required this.availableAtWarehouse,
      required this.availableAtVendor});

  factory SearchReport.fromJson(Map<String, Object?> json) =>
      _$SearchReportFromJson(json);

  Map<String, dynamic> toJson() => _$SearchReportToJson(this);

  @override
  List<Object?> get props => [
        date,
        storeName,
        storeCode,
        searchKeyword,
        productName,
        searchedQty,
        packageSize,
        packageType,
        wsCode,
        mrp,
        availableQty,
        tat,
        availableAtWarehouse,
        availableAtVendor
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

  Meta({
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

import '../../enum/sales_search_type_enum.dart';

class SearchTypeModel {
  final SalesSearchTypeEnum searchTypeEnum;
  final String label;

  SearchTypeModel({required this.searchTypeEnum, required this.label});
}

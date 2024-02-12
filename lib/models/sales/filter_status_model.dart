import '../../enum/sale_filter_enum.dart';

class FilterStatusModel {
  final SaleStatusFilterEnum statusEnum;
  final String label;
  FilterStatusModel({required this.statusEnum, required this.label});
}

import '../../enum/home_delivery/search_type_enum.dart';

class HomeDeliverySearchTypeModel {
  final HomeDeliverySearchTypeEnum searchTypeEnum;
  final String label;

  HomeDeliverySearchTypeModel(
      {required this.searchTypeEnum, required this.label});
}

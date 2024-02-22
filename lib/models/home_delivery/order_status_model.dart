import '../../enum/home_delivery/order_status_type_enum.dart';

class HomeDeliveryOrderStatusModel {
  final HomeDeliveryOrderStatusEnum orderStatusEnum;
  final String label;

  HomeDeliveryOrderStatusModel(
      {required this.orderStatusEnum, required this.label});
}

import '../../enum/home_delivery/payment_status_enum.dart';

class HomeDeliveryPaymentStatusModel {
  final HomeDeliveryPaymentStatusEnum paymentStatusEnum;
  final String label;

  HomeDeliveryPaymentStatusModel(
      {required this.paymentStatusEnum, required this.label});
}

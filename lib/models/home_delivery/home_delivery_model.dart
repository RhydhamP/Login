import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_delivery_model.g.dart';

@JsonSerializable()
class HomeDeliveryResponse extends Equatable {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'orders')
  final List<Order> orders;
  @JsonKey(name: 'meta')
  final Meta meta;

  const HomeDeliveryResponse({
    required this.code,
    required this.type,
    required this.message,
    required this.orders,
    required this.meta,
  });

  factory HomeDeliveryResponse.fromJson(Map<String, Object?> json) =>
      _$HomeDeliveryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDeliveryResponseToJson(this);

  @override
  List<Object?> get props => [code, type, message, orders, meta];
}

@JsonSerializable()
class Order extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'from_name')
  final String fromName;
  @JsonKey(name: 'to_name')
  final String toName;
  @JsonKey(name: 'invoice_number')
  final String invoiceNumber;
  @JsonKey(name: 'order_time')
  final String orderTime;
  @JsonKey(name: 'pickup_time')
  final String? pickupTime;
  @JsonKey(name: 'delivered_time')
  final String? deliveredTime;
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'to_pincode')
  final String toPincode;
  @JsonKey(name: 'is_delivery_charge_collected')
  final String? isDeliveryChargeCollected;
  @JsonKey(name: 'amount')
  final int amount;
  @JsonKey(name: 'employee_code')
  final String employeeCode;
  @JsonKey(name: 'awb_number')
  final String awbNumber;

  Order({
    required this.id,
    required this.fromName,
    required this.toName,
    required this.invoiceNumber,
    required this.orderTime,
    required this.pickupTime,
    required this.deliveredTime,
    required this.orderStatus,
    required this.paymentStatus,
    required this.toPincode,
    required this.isDeliveryChargeCollected,
    required this.amount,
    required this.employeeCode,
    required this.awbNumber,
  });

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  List<Object?> get props => [
        id,
        fromName,
        toName,
        invoiceNumber,
        orderTime,
        pickupTime,
        deliveredTime,
        orderStatus,
        paymentStatus,
        toPincode,
        isDeliveryChargeCollected,
        amount,
        employeeCode,
        awbNumber
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

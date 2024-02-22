// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDeliveryResponse _$HomeDeliveryResponseFromJson(
        Map<String, dynamic> json) =>
    HomeDeliveryResponse(
      code: json['code'] as int,
      type: json['type'] as String,
      message: json['message'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDeliveryResponseToJson(
        HomeDeliveryResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
      'orders': instance.orders,
      'meta': instance.meta,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      fromName: json['from_name'] as String,
      toName: json['to_name'] as String,
      invoiceNumber: json['invoice_number'] as String,
      orderTime: json['order_time'] as String,
      pickupTime: json['pickup_time'] as String?,
      deliveredTime: json['delivered_time'] as String?,
      orderStatus: json['order_status'] as String,
      paymentStatus: json['payment_status'] as String,
      toPincode: json['to_pincode'] as String,
      isDeliveryChargeCollected:
          json['is_delivery_charge_collected'] as String?,
      amount: json['amount'] as int,
      employeeCode: json['employee_code'] as String,
      awbNumber: json['awb_number'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'from_name': instance.fromName,
      'to_name': instance.toName,
      'invoice_number': instance.invoiceNumber,
      'order_time': instance.orderTime,
      'pickup_time': instance.pickupTime,
      'delivered_time': instance.deliveredTime,
      'order_status': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'to_pincode': instance.toPincode,
      'is_delivery_charge_collected': instance.isDeliveryChargeCollected,
      'amount': instance.amount,
      'employee_code': instance.employeeCode,
      'awb_number': instance.awbNumber,
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

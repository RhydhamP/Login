enum HomeDeliveryOrderStatusEnum {
  ofd("OUT_FOR_DELIVERY"),
  rto("RTO"),
  pick("PICKED_UP"),
  delivered("DELIVERED"),
  cancelled("CANCELLED_BY_SHIPPER"),
  received("RECEIVED");

  final String value;
  const HomeDeliveryOrderStatusEnum(this.value);
}

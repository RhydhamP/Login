enum SaleStatusFilterEnum {
  accepted("ACCEPTED"),
  fulfilled("FULFILLED"),
  cancelled("CANCELLED"),
  partiallyFulfilled("PARTIALLY_FULFILLED"),
  unAvailable("UNAVAILABLE");

  final String value;
  const SaleStatusFilterEnum(this.value);
}

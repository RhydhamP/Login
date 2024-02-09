abstract class SalesOrderApi {
  Future dateFilterApi(Map<String, dynamic> body);
  Future productSearchApi(Map<String, dynamic> body);
  // Future dateFilterAndProductApi(Map<String, dynamic> body);
  // Future dateFilterAndSOApi(Map<String, dynamic> body);
  // Future dateAndStatusFilterApi(Map<String, dynamic> body);
  // Future dateAndStatusAndProductFilterApi(Map<String, dynamic> body);
  Future storeSearchApi(Map<String, dynamic> body);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/add/add_model2.dart';


part 'add_model1.freezed.dart';
part 'add_model1.g.dart';


@freezed
class AddModel1 with _$AddModel1 {
  factory AddModel1({
    required int id,
    required String name,
    required bool? is_banned,
    required bool? is_discontinued,
    required List<AddModel2> images,
    required num mrp,
    required num sales_price,
    required String content,
    required String package_type,
    required int package_size, 
    required int ws_code, 
  }) = _AddModel1;

  factory AddModel1.fromJson(Map<String, Object?> json) =>
      _$AddModel1FromJson(json);
}
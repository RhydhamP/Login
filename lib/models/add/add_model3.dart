import 'package:freezed_annotation/freezed_annotation.dart';


part 'add_model3.freezed.dart';
part 'add_model3.g.dart';

@freezed
class AddModel3 with _$AddModel3 {
  factory AddModel3({
    required bool? wsRes,
    required num wsQuantity,
    required bool? pharmaRes,
  }) = _AddModel3;

  factory AddModel3.fromJson(Map<String, Object?> json) =>
      _$AddModel3FromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/models/add/add_model1.dart';
import 'package:login/models/add/add_model3.dart';


part 'add_model.freezed.dart';
part 'add_model.g.dart';


@freezed
class AddModel with _$AddModel {
  factory AddModel({ 
    required int code,
    required String type,
    required String message,
    required AddModel1 Product,
    required AddModel3 Availability,
  }) = _AddModel;

  factory AddModel.fromJson(Map<String, Object?> json) =>
      _$AddModelFromJson(json);
}

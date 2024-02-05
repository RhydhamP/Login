import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_model2.freezed.dart';
part 'add_model2.g.dart';

@freezed
class AddModel2 with _$AddModel2 {
  factory AddModel2({
    String? name,
    String? url,
  }) = _AddModel2;

  factory AddModel2.fromJson(Map<String, Object?> json) =>
      _$AddModel2FromJson(json);
}

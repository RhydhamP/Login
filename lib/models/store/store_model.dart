import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_model.g.dart';

@JsonSerializable()
class StoreResponse extends Equatable {
  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final List<Store> data;

  const StoreResponse({
    required this.code,
    required this.type,
    required this.message,
    required this.data,
  });

  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StoreResponseToJson(this);

  @override
  List<Object?> get props => [code, type, message, data];
}

@JsonSerializable()
class Store extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'store_code')
  final String? storeCode;

  const Store({
    required this.id,
    required this.name,
    required this.storeCode,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  List<Object?> get props => [id, name, storeCode];
}

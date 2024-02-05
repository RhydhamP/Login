// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddModel _$AddModelFromJson(Map<String, dynamic> json) {
  return _AddModel.fromJson(json);
}

/// @nodoc
mixin _$AddModel {
  int get code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AddModel1 get Product => throw _privateConstructorUsedError;
  AddModel3 get Availability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddModelCopyWith<AddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModelCopyWith<$Res> {
  factory $AddModelCopyWith(AddModel value, $Res Function(AddModel) then) =
      _$AddModelCopyWithImpl<$Res, AddModel>;
  @useResult
  $Res call(
      {int code,
      String type,
      String message,
      AddModel1 Product,
      AddModel3 Availability});

  $AddModel1CopyWith<$Res> get Product;
  $AddModel3CopyWith<$Res> get Availability;
}

/// @nodoc
class _$AddModelCopyWithImpl<$Res, $Val extends AddModel>
    implements $AddModelCopyWith<$Res> {
  _$AddModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
    Object? message = null,
    Object? Product = null,
    Object? Availability = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      Product: null == Product
          ? _value.Product
          : Product // ignore: cast_nullable_to_non_nullable
              as AddModel1,
      Availability: null == Availability
          ? _value.Availability
          : Availability // ignore: cast_nullable_to_non_nullable
              as AddModel3,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddModel1CopyWith<$Res> get Product {
    return $AddModel1CopyWith<$Res>(_value.Product, (value) {
      return _then(_value.copyWith(Product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddModel3CopyWith<$Res> get Availability {
    return $AddModel3CopyWith<$Res>(_value.Availability, (value) {
      return _then(_value.copyWith(Availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddModelImplCopyWith<$Res>
    implements $AddModelCopyWith<$Res> {
  factory _$$AddModelImplCopyWith(
          _$AddModelImpl value, $Res Function(_$AddModelImpl) then) =
      __$$AddModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String type,
      String message,
      AddModel1 Product,
      AddModel3 Availability});

  @override
  $AddModel1CopyWith<$Res> get Product;
  @override
  $AddModel3CopyWith<$Res> get Availability;
}

/// @nodoc
class __$$AddModelImplCopyWithImpl<$Res>
    extends _$AddModelCopyWithImpl<$Res, _$AddModelImpl>
    implements _$$AddModelImplCopyWith<$Res> {
  __$$AddModelImplCopyWithImpl(
      _$AddModelImpl _value, $Res Function(_$AddModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
    Object? message = null,
    Object? Product = null,
    Object? Availability = null,
  }) {
    return _then(_$AddModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      Product: null == Product
          ? _value.Product
          : Product // ignore: cast_nullable_to_non_nullable
              as AddModel1,
      Availability: null == Availability
          ? _value.Availability
          : Availability // ignore: cast_nullable_to_non_nullable
              as AddModel3,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddModelImpl implements _AddModel {
  _$AddModelImpl(
      {required this.code,
      required this.type,
      required this.message,
      required this.Product,
      required this.Availability});

  factory _$AddModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddModelImplFromJson(json);

  @override
  final int code;
  @override
  final String type;
  @override
  final String message;
  @override
  final AddModel1 Product;
  @override
  final AddModel3 Availability;

  @override
  String toString() {
    return 'AddModel(code: $code, type: $type, message: $message, Product: $Product, Availability: $Availability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.Product, Product) || other.Product == Product) &&
            (identical(other.Availability, Availability) ||
                other.Availability == Availability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, type, message, Product, Availability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddModelImplCopyWith<_$AddModelImpl> get copyWith =>
      __$$AddModelImplCopyWithImpl<_$AddModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddModelImplToJson(
      this,
    );
  }
}

abstract class _AddModel implements AddModel {
  factory _AddModel(
      {required final int code,
      required final String type,
      required final String message,
      required final AddModel1 Product,
      required final AddModel3 Availability}) = _$AddModelImpl;

  factory _AddModel.fromJson(Map<String, dynamic> json) =
      _$AddModelImpl.fromJson;

  @override
  int get code;
  @override
  String get type;
  @override
  String get message;
  @override
  AddModel1 get Product;
  @override
  AddModel3 get Availability;
  @override
  @JsonKey(ignore: true)
  _$$AddModelImplCopyWith<_$AddModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

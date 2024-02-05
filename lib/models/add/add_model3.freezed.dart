// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_model3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddModel3 _$AddModel3FromJson(Map<String, dynamic> json) {
  return _AddModel3.fromJson(json);
}

/// @nodoc
mixin _$AddModel3 {
  bool? get wsRes => throw _privateConstructorUsedError;
  num get wsQuantity => throw _privateConstructorUsedError;
  bool? get pharmaRes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddModel3CopyWith<AddModel3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModel3CopyWith<$Res> {
  factory $AddModel3CopyWith(AddModel3 value, $Res Function(AddModel3) then) =
      _$AddModel3CopyWithImpl<$Res, AddModel3>;
  @useResult
  $Res call({bool? wsRes, num wsQuantity, bool? pharmaRes});
}

/// @nodoc
class _$AddModel3CopyWithImpl<$Res, $Val extends AddModel3>
    implements $AddModel3CopyWith<$Res> {
  _$AddModel3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wsRes = freezed,
    Object? wsQuantity = null,
    Object? pharmaRes = freezed,
  }) {
    return _then(_value.copyWith(
      wsRes: freezed == wsRes
          ? _value.wsRes
          : wsRes // ignore: cast_nullable_to_non_nullable
              as bool?,
      wsQuantity: null == wsQuantity
          ? _value.wsQuantity
          : wsQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      pharmaRes: freezed == pharmaRes
          ? _value.pharmaRes
          : pharmaRes // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddModel3ImplCopyWith<$Res>
    implements $AddModel3CopyWith<$Res> {
  factory _$$AddModel3ImplCopyWith(
          _$AddModel3Impl value, $Res Function(_$AddModel3Impl) then) =
      __$$AddModel3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? wsRes, num wsQuantity, bool? pharmaRes});
}

/// @nodoc
class __$$AddModel3ImplCopyWithImpl<$Res>
    extends _$AddModel3CopyWithImpl<$Res, _$AddModel3Impl>
    implements _$$AddModel3ImplCopyWith<$Res> {
  __$$AddModel3ImplCopyWithImpl(
      _$AddModel3Impl _value, $Res Function(_$AddModel3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wsRes = freezed,
    Object? wsQuantity = null,
    Object? pharmaRes = freezed,
  }) {
    return _then(_$AddModel3Impl(
      wsRes: freezed == wsRes
          ? _value.wsRes
          : wsRes // ignore: cast_nullable_to_non_nullable
              as bool?,
      wsQuantity: null == wsQuantity
          ? _value.wsQuantity
          : wsQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      pharmaRes: freezed == pharmaRes
          ? _value.pharmaRes
          : pharmaRes // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddModel3Impl implements _AddModel3 {
  _$AddModel3Impl(
      {required this.wsRes, required this.wsQuantity, required this.pharmaRes});

  factory _$AddModel3Impl.fromJson(Map<String, dynamic> json) =>
      _$$AddModel3ImplFromJson(json);

  @override
  final bool? wsRes;
  @override
  final num wsQuantity;
  @override
  final bool? pharmaRes;

  @override
  String toString() {
    return 'AddModel3(wsRes: $wsRes, wsQuantity: $wsQuantity, pharmaRes: $pharmaRes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddModel3Impl &&
            (identical(other.wsRes, wsRes) || other.wsRes == wsRes) &&
            (identical(other.wsQuantity, wsQuantity) ||
                other.wsQuantity == wsQuantity) &&
            (identical(other.pharmaRes, pharmaRes) ||
                other.pharmaRes == pharmaRes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wsRes, wsQuantity, pharmaRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddModel3ImplCopyWith<_$AddModel3Impl> get copyWith =>
      __$$AddModel3ImplCopyWithImpl<_$AddModel3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddModel3ImplToJson(
      this,
    );
  }
}

abstract class _AddModel3 implements AddModel3 {
  factory _AddModel3(
      {required final bool? wsRes,
      required final num wsQuantity,
      required final bool? pharmaRes}) = _$AddModel3Impl;

  factory _AddModel3.fromJson(Map<String, dynamic> json) =
      _$AddModel3Impl.fromJson;

  @override
  bool? get wsRes;
  @override
  num get wsQuantity;
  @override
  bool? get pharmaRes;
  @override
  @JsonKey(ignore: true)
  _$$AddModel3ImplCopyWith<_$AddModel3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

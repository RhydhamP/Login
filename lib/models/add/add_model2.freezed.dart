// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_model2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddModel2 _$AddModel2FromJson(Map<String, dynamic> json) {
  return _AddModel2.fromJson(json);
}

/// @nodoc
mixin _$AddModel2 {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddModel2CopyWith<AddModel2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModel2CopyWith<$Res> {
  factory $AddModel2CopyWith(AddModel2 value, $Res Function(AddModel2) then) =
      _$AddModel2CopyWithImpl<$Res, AddModel2>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$AddModel2CopyWithImpl<$Res, $Val extends AddModel2>
    implements $AddModel2CopyWith<$Res> {
  _$AddModel2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddModel2ImplCopyWith<$Res>
    implements $AddModel2CopyWith<$Res> {
  factory _$$AddModel2ImplCopyWith(
          _$AddModel2Impl value, $Res Function(_$AddModel2Impl) then) =
      __$$AddModel2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$AddModel2ImplCopyWithImpl<$Res>
    extends _$AddModel2CopyWithImpl<$Res, _$AddModel2Impl>
    implements _$$AddModel2ImplCopyWith<$Res> {
  __$$AddModel2ImplCopyWithImpl(
      _$AddModel2Impl _value, $Res Function(_$AddModel2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$AddModel2Impl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddModel2Impl implements _AddModel2 {
  _$AddModel2Impl({this.name, this.url});

  factory _$AddModel2Impl.fromJson(Map<String, dynamic> json) =>
      _$$AddModel2ImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'AddModel2(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddModel2Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddModel2ImplCopyWith<_$AddModel2Impl> get copyWith =>
      __$$AddModel2ImplCopyWithImpl<_$AddModel2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddModel2ImplToJson(
      this,
    );
  }
}

abstract class _AddModel2 implements AddModel2 {
  factory _AddModel2({final String? name, final String? url}) = _$AddModel2Impl;

  factory _AddModel2.fromJson(Map<String, dynamic> json) =
      _$AddModel2Impl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$AddModel2ImplCopyWith<_$AddModel2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

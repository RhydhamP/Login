// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel3 _$LoginModel3FromJson(Map<String, dynamic> json) {
  return _LoginModel3.fromJson(json);
}

/// @nodoc
mixin _$LoginModel3 {
  Map<String, String> get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModel3CopyWith<LoginModel3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModel3CopyWith<$Res> {
  factory $LoginModel3CopyWith(
          LoginModel3 value, $Res Function(LoginModel3) then) =
      _$LoginModel3CopyWithImpl<$Res, LoginModel3>;
  @useResult
  $Res call({Map<String, String> token});
}

/// @nodoc
class _$LoginModel3CopyWithImpl<$Res, $Val extends LoginModel3>
    implements $LoginModel3CopyWith<$Res> {
  _$LoginModel3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginModel3ImplCopyWith<$Res>
    implements $LoginModel3CopyWith<$Res> {
  factory _$$LoginModel3ImplCopyWith(
          _$LoginModel3Impl value, $Res Function(_$LoginModel3Impl) then) =
      __$$LoginModel3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> token});
}

/// @nodoc
class __$$LoginModel3ImplCopyWithImpl<$Res>
    extends _$LoginModel3CopyWithImpl<$Res, _$LoginModel3Impl>
    implements _$$LoginModel3ImplCopyWith<$Res> {
  __$$LoginModel3ImplCopyWithImpl(
      _$LoginModel3Impl _value, $Res Function(_$LoginModel3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$LoginModel3Impl(
      token: null == token
          ? _value._token
          : token // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginModel3Impl implements _LoginModel3 {
  _$LoginModel3Impl({required final Map<String, String> token})
      : _token = token;

  factory _$LoginModel3Impl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModel3ImplFromJson(json);

  final Map<String, String> _token;
  @override
  Map<String, String> get token {
    if (_token is EqualUnmodifiableMapView) return _token;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_token);
  }

  @override
  String toString() {
    return 'LoginModel3(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModel3Impl &&
            const DeepCollectionEquality().equals(other._token, _token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_token));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModel3ImplCopyWith<_$LoginModel3Impl> get copyWith =>
      __$$LoginModel3ImplCopyWithImpl<_$LoginModel3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModel3ImplToJson(
      this,
    );
  }
}

abstract class _LoginModel3 implements LoginModel3 {
  factory _LoginModel3({required final Map<String, String> token}) =
      _$LoginModel3Impl;

  factory _LoginModel3.fromJson(Map<String, dynamic> json) =
      _$LoginModel3Impl.fromJson;

  @override
  Map<String, String> get token;
  @override
  @JsonKey(ignore: true)
  _$$LoginModel3ImplCopyWith<_$LoginModel3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

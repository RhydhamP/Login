// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModel2 _$LoginModel2FromJson(Map<String, dynamic> json) {
  return _LoginModel2.fromJson(json);
}

/// @nodoc
mixin _$LoginModel2 {
  Map<String, dynamic> get profile => throw _privateConstructorUsedError;
  Map<String, LoginModel3> get auth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModel2CopyWith<LoginModel2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModel2CopyWith<$Res> {
  factory $LoginModel2CopyWith(
          LoginModel2 value, $Res Function(LoginModel2) then) =
      _$LoginModel2CopyWithImpl<$Res, LoginModel2>;
  @useResult
  $Res call({Map<String, dynamic> profile, Map<String, LoginModel3> auth});
}

/// @nodoc
class _$LoginModel2CopyWithImpl<$Res, $Val extends LoginModel2>
    implements $LoginModel2CopyWith<$Res> {
  _$LoginModel2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? auth = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Map<String, LoginModel3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginModel2ImplCopyWith<$Res>
    implements $LoginModel2CopyWith<$Res> {
  factory _$$LoginModel2ImplCopyWith(
          _$LoginModel2Impl value, $Res Function(_$LoginModel2Impl) then) =
      __$$LoginModel2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> profile, Map<String, LoginModel3> auth});
}

/// @nodoc
class __$$LoginModel2ImplCopyWithImpl<$Res>
    extends _$LoginModel2CopyWithImpl<$Res, _$LoginModel2Impl>
    implements _$$LoginModel2ImplCopyWith<$Res> {
  __$$LoginModel2ImplCopyWithImpl(
      _$LoginModel2Impl _value, $Res Function(_$LoginModel2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? auth = null,
  }) {
    return _then(_$LoginModel2Impl(
      profile: null == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      auth: null == auth
          ? _value._auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Map<String, LoginModel3>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginModel2Impl implements _LoginModel2 {
  _$LoginModel2Impl(
      {required final Map<String, dynamic> profile,
      required final Map<String, LoginModel3> auth})
      : _profile = profile,
        _auth = auth;

  factory _$LoginModel2Impl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModel2ImplFromJson(json);

  final Map<String, dynamic> _profile;
  @override
  Map<String, dynamic> get profile {
    if (_profile is EqualUnmodifiableMapView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_profile);
  }

  final Map<String, LoginModel3> _auth;
  @override
  Map<String, LoginModel3> get auth {
    if (_auth is EqualUnmodifiableMapView) return _auth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_auth);
  }

  @override
  String toString() {
    return 'LoginModel2(profile: $profile, auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModel2Impl &&
            const DeepCollectionEquality().equals(other._profile, _profile) &&
            const DeepCollectionEquality().equals(other._auth, _auth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_profile),
      const DeepCollectionEquality().hash(_auth));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModel2ImplCopyWith<_$LoginModel2Impl> get copyWith =>
      __$$LoginModel2ImplCopyWithImpl<_$LoginModel2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModel2ImplToJson(
      this,
    );
  }
}

abstract class _LoginModel2 implements LoginModel2 {
  factory _LoginModel2(
      {required final Map<String, dynamic> profile,
      required final Map<String, LoginModel3> auth}) = _$LoginModel2Impl;

  factory _LoginModel2.fromJson(Map<String, dynamic> json) =
      _$LoginModel2Impl.fromJson;

  @override
  Map<String, dynamic> get profile;
  @override
  Map<String, LoginModel3> get auth;
  @override
  @JsonKey(ignore: true)
  _$$LoginModel2ImplCopyWith<_$LoginModel2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

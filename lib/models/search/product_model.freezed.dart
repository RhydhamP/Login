// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get is_banned => throw _privateConstructorUsedError;
  bool get is_discontinued => throw _privateConstructorUsedError;
  List<ImagesModel> get images => throw _privateConstructorUsedError;
  num get mrp => throw _privateConstructorUsedError;
  num get sales_price => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get package_type => throw _privateConstructorUsedError;
  int get package_size => throw _privateConstructorUsedError;
  int get ws_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool is_banned,
      bool is_discontinued,
      List<ImagesModel> images,
      num mrp,
      num sales_price,
      String content,
      String package_type,
      int package_size,
      int ws_code});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? is_banned = null,
    Object? is_discontinued = null,
    Object? images = null,
    Object? mrp = null,
    Object? sales_price = null,
    Object? content = null,
    Object? package_type = null,
    Object? package_size = null,
    Object? ws_code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as bool,
      is_discontinued: null == is_discontinued
          ? _value.is_discontinued
          : is_discontinued // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
      mrp: null == mrp
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as num,
      sales_price: null == sales_price
          ? _value.sales_price
          : sales_price // ignore: cast_nullable_to_non_nullable
              as num,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      package_type: null == package_type
          ? _value.package_type
          : package_type // ignore: cast_nullable_to_non_nullable
              as String,
      package_size: null == package_size
          ? _value.package_size
          : package_size // ignore: cast_nullable_to_non_nullable
              as int,
      ws_code: null == ws_code
          ? _value.ws_code
          : ws_code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool is_banned,
      bool is_discontinued,
      List<ImagesModel> images,
      num mrp,
      num sales_price,
      String content,
      String package_type,
      int package_size,
      int ws_code});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? is_banned = null,
    Object? is_discontinued = null,
    Object? images = null,
    Object? mrp = null,
    Object? sales_price = null,
    Object? content = null,
    Object? package_type = null,
    Object? package_size = null,
    Object? ws_code = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      is_banned: null == is_banned
          ? _value.is_banned
          : is_banned // ignore: cast_nullable_to_non_nullable
              as bool,
      is_discontinued: null == is_discontinued
          ? _value.is_discontinued
          : is_discontinued // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
      mrp: null == mrp
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as num,
      sales_price: null == sales_price
          ? _value.sales_price
          : sales_price // ignore: cast_nullable_to_non_nullable
              as num,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      package_type: null == package_type
          ? _value.package_type
          : package_type // ignore: cast_nullable_to_non_nullable
              as String,
      package_size: null == package_size
          ? _value.package_size
          : package_size // ignore: cast_nullable_to_non_nullable
              as int,
      ws_code: null == ws_code
          ? _value.ws_code
          : ws_code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.is_banned,
      required this.is_discontinued,
      required final List<ImagesModel> images,
      required this.mrp,
      required this.sales_price,
      required this.content,
      required this.package_type,
      required this.package_size,
      required this.ws_code})
      : _images = images;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool is_banned;
  @override
  final bool is_discontinued;
  final List<ImagesModel> _images;
  @override
  List<ImagesModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final num mrp;
  @override
  final num sales_price;
  @override
  final String content;
  @override
  final String package_type;
  @override
  final int package_size;
  @override
  final int ws_code;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, is_banned: $is_banned, is_discontinued: $is_discontinued, images: $images, mrp: $mrp, sales_price: $sales_price, content: $content, package_type: $package_type, package_size: $package_size, ws_code: $ws_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.is_banned, is_banned) ||
                other.is_banned == is_banned) &&
            (identical(other.is_discontinued, is_discontinued) ||
                other.is_discontinued == is_discontinued) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.mrp, mrp) || other.mrp == mrp) &&
            (identical(other.sales_price, sales_price) ||
                other.sales_price == sales_price) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.package_type, package_type) ||
                other.package_type == package_type) &&
            (identical(other.package_size, package_size) ||
                other.package_size == package_size) &&
            (identical(other.ws_code, ws_code) || other.ws_code == ws_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      is_banned,
      is_discontinued,
      const DeepCollectionEquality().hash(_images),
      mrp,
      sales_price,
      content,
      package_type,
      package_size,
      ws_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final int id,
      required final String name,
      required final bool is_banned,
      required final bool is_discontinued,
      required final List<ImagesModel> images,
      required final num mrp,
      required final num sales_price,
      required final String content,
      required final String package_type,
      required final int package_size,
      required final int ws_code}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get is_banned;
  @override
  bool get is_discontinued;
  @override
  List<ImagesModel> get images;
  @override
  num get mrp;
  @override
  num get sales_price;
  @override
  String get content;
  @override
  String get package_type;
  @override
  int get package_size;
  @override
  int get ws_code;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

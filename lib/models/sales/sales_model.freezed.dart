// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesOrderResponse _$SalesOrderResponseFromJson(Map<String, dynamic> json) {
  return _SalesOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderResponse {
  int get code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<SalesOrderItem> get salesOrdersItems =>
      throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderResponseCopyWith<SalesOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderResponseCopyWith<$Res> {
  factory $SalesOrderResponseCopyWith(
          SalesOrderResponse value, $Res Function(SalesOrderResponse) then) =
      _$SalesOrderResponseCopyWithImpl<$Res, SalesOrderResponse>;
  @useResult
  $Res call(
      {int code,
      String type,
      String message,
      List<SalesOrderItem> salesOrdersItems,
      Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$SalesOrderResponseCopyWithImpl<$Res, $Val extends SalesOrderResponse>
    implements $SalesOrderResponseCopyWith<$Res> {
  _$SalesOrderResponseCopyWithImpl(this._value, this._then);

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
    Object? salesOrdersItems = null,
    Object? meta = null,
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
      salesOrdersItems: null == salesOrdersItems
          ? _value.salesOrdersItems
          : salesOrdersItems // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesOrderResponseImplCopyWith<$Res>
    implements $SalesOrderResponseCopyWith<$Res> {
  factory _$$SalesOrderResponseImplCopyWith(_$SalesOrderResponseImpl value,
          $Res Function(_$SalesOrderResponseImpl) then) =
      __$$SalesOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String type,
      String message,
      List<SalesOrderItem> salesOrdersItems,
      Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$SalesOrderResponseImplCopyWithImpl<$Res>
    extends _$SalesOrderResponseCopyWithImpl<$Res, _$SalesOrderResponseImpl>
    implements _$$SalesOrderResponseImplCopyWith<$Res> {
  __$$SalesOrderResponseImplCopyWithImpl(_$SalesOrderResponseImpl _value,
      $Res Function(_$SalesOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
    Object? message = null,
    Object? salesOrdersItems = null,
    Object? meta = null,
  }) {
    return _then(_$SalesOrderResponseImpl(
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
      salesOrdersItems: null == salesOrdersItems
          ? _value._salesOrdersItems
          : salesOrdersItems // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderResponseImpl implements _SalesOrderResponse {
  const _$SalesOrderResponseImpl(
      {required this.code,
      required this.type,
      required this.message,
      required final List<SalesOrderItem> salesOrdersItems,
      required this.meta})
      : _salesOrdersItems = salesOrdersItems;

  factory _$SalesOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String type;
  @override
  final String message;
  final List<SalesOrderItem> _salesOrdersItems;
  @override
  List<SalesOrderItem> get salesOrdersItems {
    if (_salesOrdersItems is EqualUnmodifiableListView)
      return _salesOrdersItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesOrdersItems);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'SalesOrderResponse(code: $code, type: $type, message: $message, salesOrdersItems: $salesOrdersItems, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._salesOrdersItems, _salesOrdersItems) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, type, message,
      const DeepCollectionEquality().hash(_salesOrdersItems), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderResponseImplCopyWith<_$SalesOrderResponseImpl> get copyWith =>
      __$$SalesOrderResponseImplCopyWithImpl<_$SalesOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderResponse implements SalesOrderResponse {
  const factory _SalesOrderResponse(
      {required final int code,
      required final String type,
      required final String message,
      required final List<SalesOrderItem> salesOrdersItems,
      required final Meta meta}) = _$SalesOrderResponseImpl;

  factory _SalesOrderResponse.fromJson(Map<String, dynamic> json) =
      _$SalesOrderResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get type;
  @override
  String get message;
  @override
  List<SalesOrderItem> get salesOrdersItems;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderResponseImplCopyWith<_$SalesOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesOrderItem _$SalesOrderItemFromJson(Map<String, dynamic> json) {
  return _SalesOrderItem.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderItem {
  int get product_code => throw _privateConstructorUsedError;
  int get ws_code => throw _privateConstructorUsedError;
  String get product_name => throw _privateConstructorUsedError;
  int get ordered_quantity => throw _privateConstructorUsedError;
  int get fulfilled_quantity => throw _privateConstructorUsedError;
  String get so_date => throw _privateConstructorUsedError;
  String get so_created_at => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get so_number => throw _privateConstructorUsedError;
  dynamic get doc_number => throw _privateConstructorUsedError;
  String get store_name => throw _privateConstructorUsedError;
  String get store_code => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderItemCopyWith<SalesOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderItemCopyWith<$Res> {
  factory $SalesOrderItemCopyWith(
          SalesOrderItem value, $Res Function(SalesOrderItem) then) =
      _$SalesOrderItemCopyWithImpl<$Res, SalesOrderItem>;
  @useResult
  $Res call(
      {int product_code,
      int ws_code,
      String product_name,
      int ordered_quantity,
      int fulfilled_quantity,
      String so_date,
      String so_created_at,
      String status,
      String so_number,
      dynamic doc_number,
      String store_name,
      String store_code,
      String remark});
}

/// @nodoc
class _$SalesOrderItemCopyWithImpl<$Res, $Val extends SalesOrderItem>
    implements $SalesOrderItemCopyWith<$Res> {
  _$SalesOrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_code = null,
    Object? ws_code = null,
    Object? product_name = null,
    Object? ordered_quantity = null,
    Object? fulfilled_quantity = null,
    Object? so_date = null,
    Object? so_created_at = null,
    Object? status = null,
    Object? so_number = null,
    Object? doc_number = freezed,
    Object? store_name = null,
    Object? store_code = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      product_code: null == product_code
          ? _value.product_code
          : product_code // ignore: cast_nullable_to_non_nullable
              as int,
      ws_code: null == ws_code
          ? _value.ws_code
          : ws_code // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      ordered_quantity: null == ordered_quantity
          ? _value.ordered_quantity
          : ordered_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilled_quantity: null == fulfilled_quantity
          ? _value.fulfilled_quantity
          : fulfilled_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      so_date: null == so_date
          ? _value.so_date
          : so_date // ignore: cast_nullable_to_non_nullable
              as String,
      so_created_at: null == so_created_at
          ? _value.so_created_at
          : so_created_at // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      so_number: null == so_number
          ? _value.so_number
          : so_number // ignore: cast_nullable_to_non_nullable
              as String,
      doc_number: freezed == doc_number
          ? _value.doc_number
          : doc_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store_name: null == store_name
          ? _value.store_name
          : store_name // ignore: cast_nullable_to_non_nullable
              as String,
      store_code: null == store_code
          ? _value.store_code
          : store_code // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderItemImplCopyWith<$Res>
    implements $SalesOrderItemCopyWith<$Res> {
  factory _$$SalesOrderItemImplCopyWith(_$SalesOrderItemImpl value,
          $Res Function(_$SalesOrderItemImpl) then) =
      __$$SalesOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int product_code,
      int ws_code,
      String product_name,
      int ordered_quantity,
      int fulfilled_quantity,
      String so_date,
      String so_created_at,
      String status,
      String so_number,
      dynamic doc_number,
      String store_name,
      String store_code,
      String remark});
}

/// @nodoc
class __$$SalesOrderItemImplCopyWithImpl<$Res>
    extends _$SalesOrderItemCopyWithImpl<$Res, _$SalesOrderItemImpl>
    implements _$$SalesOrderItemImplCopyWith<$Res> {
  __$$SalesOrderItemImplCopyWithImpl(
      _$SalesOrderItemImpl _value, $Res Function(_$SalesOrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_code = null,
    Object? ws_code = null,
    Object? product_name = null,
    Object? ordered_quantity = null,
    Object? fulfilled_quantity = null,
    Object? so_date = null,
    Object? so_created_at = null,
    Object? status = null,
    Object? so_number = null,
    Object? doc_number = freezed,
    Object? store_name = null,
    Object? store_code = null,
    Object? remark = null,
  }) {
    return _then(_$SalesOrderItemImpl(
      product_code: null == product_code
          ? _value.product_code
          : product_code // ignore: cast_nullable_to_non_nullable
              as int,
      ws_code: null == ws_code
          ? _value.ws_code
          : ws_code // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      ordered_quantity: null == ordered_quantity
          ? _value.ordered_quantity
          : ordered_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilled_quantity: null == fulfilled_quantity
          ? _value.fulfilled_quantity
          : fulfilled_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      so_date: null == so_date
          ? _value.so_date
          : so_date // ignore: cast_nullable_to_non_nullable
              as String,
      so_created_at: null == so_created_at
          ? _value.so_created_at
          : so_created_at // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      so_number: null == so_number
          ? _value.so_number
          : so_number // ignore: cast_nullable_to_non_nullable
              as String,
      doc_number: freezed == doc_number
          ? _value.doc_number
          : doc_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store_name: null == store_name
          ? _value.store_name
          : store_name // ignore: cast_nullable_to_non_nullable
              as String,
      store_code: null == store_code
          ? _value.store_code
          : store_code // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderItemImpl implements _SalesOrderItem {
  const _$SalesOrderItemImpl(
      {required this.product_code,
      required this.ws_code,
      required this.product_name,
      required this.ordered_quantity,
      required this.fulfilled_quantity,
      required this.so_date,
      required this.so_created_at,
      required this.status,
      required this.so_number,
      required this.doc_number,
      required this.store_name,
      required this.store_code,
      required this.remark});

  factory _$SalesOrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderItemImplFromJson(json);

  @override
  final int product_code;
  @override
  final int ws_code;
  @override
  final String product_name;
  @override
  final int ordered_quantity;
  @override
  final int fulfilled_quantity;
  @override
  final String so_date;
  @override
  final String so_created_at;
  @override
  final String status;
  @override
  final String so_number;
  @override
  final dynamic doc_number;
  @override
  final String store_name;
  @override
  final String store_code;
  @override
  final String remark;

  @override
  String toString() {
    return 'SalesOrderItem(product_code: $product_code, ws_code: $ws_code, product_name: $product_name, ordered_quantity: $ordered_quantity, fulfilled_quantity: $fulfilled_quantity, so_date: $so_date, so_created_at: $so_created_at, status: $status, so_number: $so_number, doc_number: $doc_number, store_name: $store_name, store_code: $store_code, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderItemImpl &&
            (identical(other.product_code, product_code) ||
                other.product_code == product_code) &&
            (identical(other.ws_code, ws_code) || other.ws_code == ws_code) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.ordered_quantity, ordered_quantity) ||
                other.ordered_quantity == ordered_quantity) &&
            (identical(other.fulfilled_quantity, fulfilled_quantity) ||
                other.fulfilled_quantity == fulfilled_quantity) &&
            (identical(other.so_date, so_date) || other.so_date == so_date) &&
            (identical(other.so_created_at, so_created_at) ||
                other.so_created_at == so_created_at) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.so_number, so_number) ||
                other.so_number == so_number) &&
            const DeepCollectionEquality()
                .equals(other.doc_number, doc_number) &&
            (identical(other.store_name, store_name) ||
                other.store_name == store_name) &&
            (identical(other.store_code, store_code) ||
                other.store_code == store_code) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_code,
      ws_code,
      product_name,
      ordered_quantity,
      fulfilled_quantity,
      so_date,
      so_created_at,
      status,
      so_number,
      const DeepCollectionEquality().hash(doc_number),
      store_name,
      store_code,
      remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderItemImplCopyWith<_$SalesOrderItemImpl> get copyWith =>
      __$$SalesOrderItemImplCopyWithImpl<_$SalesOrderItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderItemImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderItem implements SalesOrderItem {
  const factory _SalesOrderItem(
      {required final int product_code,
      required final int ws_code,
      required final String product_name,
      required final int ordered_quantity,
      required final int fulfilled_quantity,
      required final String so_date,
      required final String so_created_at,
      required final String status,
      required final String so_number,
      required final dynamic doc_number,
      required final String store_name,
      required final String store_code,
      required final String remark}) = _$SalesOrderItemImpl;

  factory _SalesOrderItem.fromJson(Map<String, dynamic> json) =
      _$SalesOrderItemImpl.fromJson;

  @override
  int get product_code;
  @override
  int get ws_code;
  @override
  String get product_name;
  @override
  int get ordered_quantity;
  @override
  int get fulfilled_quantity;
  @override
  String get so_date;
  @override
  String get so_created_at;
  @override
  String get status;
  @override
  String get so_number;
  @override
  dynamic get doc_number;
  @override
  String get store_name;
  @override
  String get store_code;
  @override
  String get remark;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderItemImplCopyWith<_$SalesOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get current_page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;
  int get last_page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get current_page_record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {int current_page,
      int per_page,
      int last_page,
      int total,
      int current_page_record});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = null,
    Object? per_page = null,
    Object? last_page = null,
    Object? total = null,
    Object? current_page_record = null,
  }) {
    return _then(_value.copyWith(
      current_page: null == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      last_page: null == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      current_page_record: null == current_page_record
          ? _value.current_page_record
          : current_page_record // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int current_page,
      int per_page,
      int last_page,
      int total,
      int current_page_record});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = null,
    Object? per_page = null,
    Object? last_page = null,
    Object? total = null,
    Object? current_page_record = null,
  }) {
    return _then(_$MetaImpl(
      current_page: null == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      last_page: null == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      current_page_record: null == current_page_record
          ? _value.current_page_record
          : current_page_record // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {required this.current_page,
      required this.per_page,
      required this.last_page,
      required this.total,
      required this.current_page_record});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final int current_page;
  @override
  final int per_page;
  @override
  final int last_page;
  @override
  final int total;
  @override
  final int current_page_record;

  @override
  String toString() {
    return 'Meta(current_page: $current_page, per_page: $per_page, last_page: $last_page, total: $total, current_page_record: $current_page_record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page) &&
            (identical(other.last_page, last_page) ||
                other.last_page == last_page) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.current_page_record, current_page_record) ||
                other.current_page_record == current_page_record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current_page, per_page,
      last_page, total, current_page_record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final int current_page,
      required final int per_page,
      required final int last_page,
      required final int total,
      required final int current_page_record}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  int get current_page;
  @override
  int get per_page;
  @override
  int get last_page;
  @override
  int get total;
  @override
  int get current_page_record;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

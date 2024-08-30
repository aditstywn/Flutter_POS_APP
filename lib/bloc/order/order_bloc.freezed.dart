// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)
        order,
    required TResult Function() syncOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult? Function()? syncOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult Function()? syncOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Order value) order,
    required TResult Function(_SyncOrder value) syncOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Order value)? order,
    TResult? Function(_SyncOrder value)? syncOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Order value)? order,
    TResult Function(_SyncOrder value)? syncOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)
        order,
    required TResult Function() syncOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult? Function()? syncOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult Function()? syncOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Order value) order,
    required TResult Function(_SyncOrder value) syncOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Order value)? order,
    TResult? Function(_SyncOrder value)? syncOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Order value)? order,
    TResult Function(_SyncOrder value)? syncOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductQuantity> item,
      int discount,
      int tax,
      int serviceCharge,
      int paymentAmount,
      String paymentMethod});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? discount = null,
    Object? tax = null,
    Object? serviceCharge = null,
    Object? paymentAmount = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$OrderImpl(
      null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<ProductQuantity>,
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderImpl implements _Order {
  const _$OrderImpl(final List<ProductQuantity> item, this.discount, this.tax,
      this.serviceCharge, this.paymentAmount, this.paymentMethod)
      : _item = item;

  final List<ProductQuantity> _item;
  @override
  List<ProductQuantity> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  final int discount;
  @override
  final int tax;
  @override
  final int serviceCharge;
  @override
  final int paymentAmount;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'OrderEvent.order(item: $item, discount: $discount, tax: $tax, serviceCharge: $serviceCharge, paymentAmount: $paymentAmount, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            const DeepCollectionEquality().equals(other._item, _item) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_item),
      discount,
      tax,
      serviceCharge,
      paymentAmount,
      paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)
        order,
    required TResult Function() syncOrder,
  }) {
    return order(
        item, discount, tax, serviceCharge, paymentAmount, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult? Function()? syncOrder,
  }) {
    return order?.call(
        item, discount, tax, serviceCharge, paymentAmount, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult Function()? syncOrder,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(
          item, discount, tax, serviceCharge, paymentAmount, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Order value) order,
    required TResult Function(_SyncOrder value) syncOrder,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Order value)? order,
    TResult? Function(_SyncOrder value)? syncOrder,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Order value)? order,
    TResult Function(_SyncOrder value)? syncOrder,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }
}

abstract class _Order implements OrderEvent {
  const factory _Order(
      final List<ProductQuantity> item,
      final int discount,
      final int tax,
      final int serviceCharge,
      final int paymentAmount,
      final String paymentMethod) = _$OrderImpl;

  List<ProductQuantity> get item;
  int get discount;
  int get tax;
  int get serviceCharge;
  int get paymentAmount;
  String get paymentMethod;
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncOrderImplCopyWith<$Res> {
  factory _$$SyncOrderImplCopyWith(
          _$SyncOrderImpl value, $Res Function(_$SyncOrderImpl) then) =
      __$$SyncOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SyncOrderImpl>
    implements _$$SyncOrderImplCopyWith<$Res> {
  __$$SyncOrderImplCopyWithImpl(
      _$SyncOrderImpl _value, $Res Function(_$SyncOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncOrderImpl implements _SyncOrder {
  const _$SyncOrderImpl();

  @override
  String toString() {
    return 'OrderEvent.syncOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)
        order,
    required TResult Function() syncOrder,
  }) {
    return syncOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult? Function()? syncOrder,
  }) {
    return syncOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductQuantity> item, int discount, int tax,
            int serviceCharge, int paymentAmount, String paymentMethod)?
        order,
    TResult Function()? syncOrder,
    required TResult orElse(),
  }) {
    if (syncOrder != null) {
      return syncOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Order value) order,
    required TResult Function(_SyncOrder value) syncOrder,
  }) {
    return syncOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Order value)? order,
    TResult? Function(_SyncOrder value)? syncOrder,
  }) {
    return syncOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Order value)? order,
    TResult Function(_SyncOrder value)? syncOrder,
    required TResult orElse(),
  }) {
    if (syncOrder != null) {
      return syncOrder(this);
    }
    return orElse();
  }
}

abstract class _SyncOrder implements OrderEvent {
  const factory _SyncOrder() = _$SyncOrderImpl;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OrderSuccessImplCopyWith<$Res> {
  factory _$$OrderSuccessImplCopyWith(
          _$OrderSuccessImpl value, $Res Function(_$OrderSuccessImpl) then) =
      __$$OrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel orderModel});
}

/// @nodoc
class __$$OrderSuccessImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderSuccessImpl>
    implements _$$OrderSuccessImplCopyWith<$Res> {
  __$$OrderSuccessImplCopyWithImpl(
      _$OrderSuccessImpl _value, $Res Function(_$OrderSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderModel = null,
  }) {
    return _then(_$OrderSuccessImpl(
      null == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$OrderSuccessImpl implements _OrderSuccess {
  const _$OrderSuccessImpl(this.orderModel);

  @override
  final OrderModel orderModel;

  @override
  String toString() {
    return 'OrderState.orderSuccess(orderModel: $orderModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSuccessImpl &&
            (identical(other.orderModel, orderModel) ||
                other.orderModel == orderModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSuccessImplCopyWith<_$OrderSuccessImpl> get copyWith =>
      __$$OrderSuccessImplCopyWithImpl<_$OrderSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) {
    return orderSuccess(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) {
    return orderSuccess?.call(orderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (orderSuccess != null) {
      return orderSuccess(orderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) {
    return orderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return orderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (orderSuccess != null) {
      return orderSuccess(this);
    }
    return orElse();
  }
}

abstract class _OrderSuccess implements OrderState {
  const factory _OrderSuccess(final OrderModel orderModel) = _$OrderSuccessImpl;

  OrderModel get orderModel;
  @JsonKey(ignore: true)
  _$$OrderSuccessImplCopyWith<_$OrderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncOrderSuccessImplCopyWith<$Res> {
  factory _$$SyncOrderSuccessImplCopyWith(_$SyncOrderSuccessImpl value,
          $Res Function(_$SyncOrderSuccessImpl) then) =
      __$$SyncOrderSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncOrderSuccessImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$SyncOrderSuccessImpl>
    implements _$$SyncOrderSuccessImplCopyWith<$Res> {
  __$$SyncOrderSuccessImplCopyWithImpl(_$SyncOrderSuccessImpl _value,
      $Res Function(_$SyncOrderSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncOrderSuccessImpl implements _SyncOrderSuccess {
  const _$SyncOrderSuccessImpl();

  @override
  String toString() {
    return 'OrderState.syncOrderSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncOrderSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) {
    return syncOrderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) {
    return syncOrderSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (syncOrderSuccess != null) {
      return syncOrderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) {
    return syncOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return syncOrderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (syncOrderSuccess != null) {
      return syncOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class _SyncOrderSuccess implements OrderState {
  const factory _SyncOrderSuccess() = _$SyncOrderSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OrderModel orderModel) orderSuccess,
    required TResult Function() syncOrderSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OrderModel orderModel)? orderSuccess,
    TResult? Function()? syncOrderSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OrderModel orderModel)? orderSuccess,
    TResult Function()? syncOrderSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OrderSuccess value) orderSuccess,
    required TResult Function(_SyncOrderSuccess value) syncOrderSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OrderSuccess value)? orderSuccess,
    TResult? Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OrderSuccess value)? orderSuccess,
    TResult Function(_SyncOrderSuccess value)? syncOrderSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrderState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

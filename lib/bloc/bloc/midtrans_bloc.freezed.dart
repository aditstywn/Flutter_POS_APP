// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MidtransEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQRCode,
    required TResult Function(String orderId) checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQRCode,
    TResult? Function(String orderId)? checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQRCode,
    TResult Function(String orderId)? checkPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQRCode value) generateQRCode,
    required TResult Function(_CheckPaymentStatus value) checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQRCode value)? generateQRCode,
    TResult? Function(_CheckPaymentStatus value)? checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQRCode value)? generateQRCode,
    TResult Function(_CheckPaymentStatus value)? checkPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransEventCopyWith<$Res> {
  factory $MidtransEventCopyWith(
          MidtransEvent value, $Res Function(MidtransEvent) then) =
      _$MidtransEventCopyWithImpl<$Res, MidtransEvent>;
}

/// @nodoc
class _$MidtransEventCopyWithImpl<$Res, $Val extends MidtransEvent>
    implements $MidtransEventCopyWith<$Res> {
  _$MidtransEventCopyWithImpl(this._value, this._then);

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
    extends _$MidtransEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MidtransEvent.started()';
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
    required TResult Function(String orderId, int grossAmount) generateQRCode,
    required TResult Function(String orderId) checkPaymentStatus,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQRCode,
    TResult? Function(String orderId)? checkPaymentStatus,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQRCode,
    TResult Function(String orderId)? checkPaymentStatus,
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
    required TResult Function(_GenerateQRCode value) generateQRCode,
    required TResult Function(_CheckPaymentStatus value) checkPaymentStatus,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQRCode value)? generateQRCode,
    TResult? Function(_CheckPaymentStatus value)? checkPaymentStatus,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQRCode value)? generateQRCode,
    TResult Function(_CheckPaymentStatus value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MidtransEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GenerateQRCodeImplCopyWith<$Res> {
  factory _$$GenerateQRCodeImplCopyWith(_$GenerateQRCodeImpl value,
          $Res Function(_$GenerateQRCodeImpl) then) =
      __$$GenerateQRCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, int grossAmount});
}

/// @nodoc
class __$$GenerateQRCodeImplCopyWithImpl<$Res>
    extends _$MidtransEventCopyWithImpl<$Res, _$GenerateQRCodeImpl>
    implements _$$GenerateQRCodeImplCopyWith<$Res> {
  __$$GenerateQRCodeImplCopyWithImpl(
      _$GenerateQRCodeImpl _value, $Res Function(_$GenerateQRCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? grossAmount = null,
  }) {
    return _then(_$GenerateQRCodeImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenerateQRCodeImpl implements _GenerateQRCode {
  const _$GenerateQRCodeImpl(this.orderId, this.grossAmount);

  @override
  final String orderId;
  @override
  final int grossAmount;

  @override
  String toString() {
    return 'MidtransEvent.generateQRCode(orderId: $orderId, grossAmount: $grossAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateQRCodeImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, grossAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateQRCodeImplCopyWith<_$GenerateQRCodeImpl> get copyWith =>
      __$$GenerateQRCodeImplCopyWithImpl<_$GenerateQRCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQRCode,
    required TResult Function(String orderId) checkPaymentStatus,
  }) {
    return generateQRCode(orderId, grossAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQRCode,
    TResult? Function(String orderId)? checkPaymentStatus,
  }) {
    return generateQRCode?.call(orderId, grossAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQRCode,
    TResult Function(String orderId)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateQRCode != null) {
      return generateQRCode(orderId, grossAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQRCode value) generateQRCode,
    required TResult Function(_CheckPaymentStatus value) checkPaymentStatus,
  }) {
    return generateQRCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQRCode value)? generateQRCode,
    TResult? Function(_CheckPaymentStatus value)? checkPaymentStatus,
  }) {
    return generateQRCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQRCode value)? generateQRCode,
    TResult Function(_CheckPaymentStatus value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateQRCode != null) {
      return generateQRCode(this);
    }
    return orElse();
  }
}

abstract class _GenerateQRCode implements MidtransEvent {
  const factory _GenerateQRCode(final String orderId, final int grossAmount) =
      _$GenerateQRCodeImpl;

  String get orderId;
  int get grossAmount;
  @JsonKey(ignore: true)
  _$$GenerateQRCodeImplCopyWith<_$GenerateQRCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPaymentStatusImplCopyWith<$Res> {
  factory _$$CheckPaymentStatusImplCopyWith(_$CheckPaymentStatusImpl value,
          $Res Function(_$CheckPaymentStatusImpl) then) =
      __$$CheckPaymentStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$CheckPaymentStatusImplCopyWithImpl<$Res>
    extends _$MidtransEventCopyWithImpl<$Res, _$CheckPaymentStatusImpl>
    implements _$$CheckPaymentStatusImplCopyWith<$Res> {
  __$$CheckPaymentStatusImplCopyWithImpl(_$CheckPaymentStatusImpl _value,
      $Res Function(_$CheckPaymentStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CheckPaymentStatusImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPaymentStatusImpl implements _CheckPaymentStatus {
  const _$CheckPaymentStatusImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'MidtransEvent.checkPaymentStatus(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPaymentStatusImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPaymentStatusImplCopyWith<_$CheckPaymentStatusImpl> get copyWith =>
      __$$CheckPaymentStatusImplCopyWithImpl<_$CheckPaymentStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQRCode,
    required TResult Function(String orderId) checkPaymentStatus,
  }) {
    return checkPaymentStatus(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQRCode,
    TResult? Function(String orderId)? checkPaymentStatus,
  }) {
    return checkPaymentStatus?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQRCode,
    TResult Function(String orderId)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQRCode value) generateQRCode,
    required TResult Function(_CheckPaymentStatus value) checkPaymentStatus,
  }) {
    return checkPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQRCode value)? generateQRCode,
    TResult? Function(_CheckPaymentStatus value)? checkPaymentStatus,
  }) {
    return checkPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQRCode value)? generateQRCode,
    TResult Function(_CheckPaymentStatus value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckPaymentStatus implements MidtransEvent {
  const factory _CheckPaymentStatus(final String orderId) =
      _$CheckPaymentStatusImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$CheckPaymentStatusImplCopyWith<_$CheckPaymentStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MidtransState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransStateCopyWith<$Res> {
  factory $MidtransStateCopyWith(
          MidtransState value, $Res Function(MidtransState) then) =
      _$MidtransStateCopyWithImpl<$Res, MidtransState>;
}

/// @nodoc
class _$MidtransStateCopyWithImpl<$Res, $Val extends MidtransState>
    implements $MidtransStateCopyWith<$Res> {
  _$MidtransStateCopyWithImpl(this._value, this._then);

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
    extends _$MidtransStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MidtransState.initial()';
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
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
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
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MidtransState {
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
    extends _$MidtransStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'MidtransState.loading()';
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
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
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
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MidtransState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$MidtransStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'MidtransState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MidtransState {
  const factory _Success(final String data) = _$SuccessImpl;

  String get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateQRCodeSuccessImplCopyWith<$Res> {
  factory _$$GenerateQRCodeSuccessImplCopyWith(
          _$GenerateQRCodeSuccessImpl value,
          $Res Function(_$GenerateQRCodeSuccessImpl) then) =
      __$$GenerateQRCodeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MidtransResponseModel midtransResponseModel});
}

/// @nodoc
class __$$GenerateQRCodeSuccessImplCopyWithImpl<$Res>
    extends _$MidtransStateCopyWithImpl<$Res, _$GenerateQRCodeSuccessImpl>
    implements _$$GenerateQRCodeSuccessImplCopyWith<$Res> {
  __$$GenerateQRCodeSuccessImplCopyWithImpl(_$GenerateQRCodeSuccessImpl _value,
      $Res Function(_$GenerateQRCodeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransResponseModel = null,
  }) {
    return _then(_$GenerateQRCodeSuccessImpl(
      null == midtransResponseModel
          ? _value.midtransResponseModel
          : midtransResponseModel // ignore: cast_nullable_to_non_nullable
              as MidtransResponseModel,
    ));
  }
}

/// @nodoc

class _$GenerateQRCodeSuccessImpl implements _GenerateQRCodeSuccess {
  const _$GenerateQRCodeSuccessImpl(this.midtransResponseModel);

  @override
  final MidtransResponseModel midtransResponseModel;

  @override
  String toString() {
    return 'MidtransState.generateQRCodeSuccess(midtransResponseModel: $midtransResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateQRCodeSuccessImpl &&
            (identical(other.midtransResponseModel, midtransResponseModel) ||
                other.midtransResponseModel == midtransResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, midtransResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateQRCodeSuccessImplCopyWith<_$GenerateQRCodeSuccessImpl>
      get copyWith => __$$GenerateQRCodeSuccessImplCopyWithImpl<
          _$GenerateQRCodeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return generateQRCodeSuccess(midtransResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return generateQRCodeSuccess?.call(midtransResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (generateQRCodeSuccess != null) {
      return generateQRCodeSuccess(midtransResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return generateQRCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return generateQRCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (generateQRCodeSuccess != null) {
      return generateQRCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GenerateQRCodeSuccess implements MidtransState {
  const factory _GenerateQRCodeSuccess(
          final MidtransResponseModel midtransResponseModel) =
      _$GenerateQRCodeSuccessImpl;

  MidtransResponseModel get midtransResponseModel;
  @JsonKey(ignore: true)
  _$$GenerateQRCodeSuccessImplCopyWith<_$GenerateQRCodeSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPaymentStatusSuccessImplCopyWith<$Res> {
  factory _$$CheckPaymentStatusSuccessImplCopyWith(
          _$CheckPaymentStatusSuccessImpl value,
          $Res Function(_$CheckPaymentStatusSuccessImpl) then) =
      __$$CheckPaymentStatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MidtransStatusResponseModel midtransStatusResponseModel});
}

/// @nodoc
class __$$CheckPaymentStatusSuccessImplCopyWithImpl<$Res>
    extends _$MidtransStateCopyWithImpl<$Res, _$CheckPaymentStatusSuccessImpl>
    implements _$$CheckPaymentStatusSuccessImplCopyWith<$Res> {
  __$$CheckPaymentStatusSuccessImplCopyWithImpl(
      _$CheckPaymentStatusSuccessImpl _value,
      $Res Function(_$CheckPaymentStatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransStatusResponseModel = null,
  }) {
    return _then(_$CheckPaymentStatusSuccessImpl(
      null == midtransStatusResponseModel
          ? _value.midtransStatusResponseModel
          : midtransStatusResponseModel // ignore: cast_nullable_to_non_nullable
              as MidtransStatusResponseModel,
    ));
  }
}

/// @nodoc

class _$CheckPaymentStatusSuccessImpl implements _CheckPaymentStatusSuccess {
  const _$CheckPaymentStatusSuccessImpl(this.midtransStatusResponseModel);

  @override
  final MidtransStatusResponseModel midtransStatusResponseModel;

  @override
  String toString() {
    return 'MidtransState.checkPaymentStatusSuccess(midtransStatusResponseModel: $midtransStatusResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPaymentStatusSuccessImpl &&
            (identical(other.midtransStatusResponseModel,
                    midtransStatusResponseModel) ||
                other.midtransStatusResponseModel ==
                    midtransStatusResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, midtransStatusResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPaymentStatusSuccessImplCopyWith<_$CheckPaymentStatusSuccessImpl>
      get copyWith => __$$CheckPaymentStatusSuccessImplCopyWithImpl<
          _$CheckPaymentStatusSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return checkPaymentStatusSuccess(midtransStatusResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return checkPaymentStatusSuccess?.call(midtransStatusResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (checkPaymentStatusSuccess != null) {
      return checkPaymentStatusSuccess(midtransStatusResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return checkPaymentStatusSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return checkPaymentStatusSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkPaymentStatusSuccess != null) {
      return checkPaymentStatusSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckPaymentStatusSuccess implements MidtransState {
  const factory _CheckPaymentStatusSuccess(
          final MidtransStatusResponseModel midtransStatusResponseModel) =
      _$CheckPaymentStatusSuccessImpl;

  MidtransStatusResponseModel get midtransStatusResponseModel;
  @JsonKey(ignore: true)
  _$$CheckPaymentStatusSuccessImplCopyWith<_$CheckPaymentStatusSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$MidtransStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'MidtransState.error(message: $message)';
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
    required TResult Function(String data) success,
    required TResult Function(MidtransResponseModel midtransResponseModel)
        generateQRCodeSuccess,
    required TResult Function(
            MidtransStatusResponseModel midtransStatusResponseModel)
        checkPaymentStatusSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String data)? success,
    TResult? Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult? Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String data)? success,
    TResult Function(MidtransResponseModel midtransResponseModel)?
        generateQRCodeSuccess,
    TResult Function(MidtransStatusResponseModel midtransStatusResponseModel)?
        checkPaymentStatusSuccess,
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
    required TResult Function(_Success value) success,
    required TResult Function(_GenerateQRCodeSuccess value)
        generateQRCodeSuccess,
    required TResult Function(_CheckPaymentStatusSuccess value)
        checkPaymentStatusSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult? Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_GenerateQRCodeSuccess value)? generateQRCodeSuccess,
    TResult Function(_CheckPaymentStatusSuccess value)?
        checkPaymentStatusSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MidtransState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

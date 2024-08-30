// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddDiscountRequestModel addDiscountRequestModel)
        addDiscount,
    required TResult Function() getDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult? Function()? getDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult Function()? getDiscount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_GetDiscount value) getDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_GetDiscount value)? getDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_GetDiscount value)? getDiscount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountEventCopyWith<$Res> {
  factory $DiscountEventCopyWith(
          DiscountEvent value, $Res Function(DiscountEvent) then) =
      _$DiscountEventCopyWithImpl<$Res, DiscountEvent>;
}

/// @nodoc
class _$DiscountEventCopyWithImpl<$Res, $Val extends DiscountEvent>
    implements $DiscountEventCopyWith<$Res> {
  _$DiscountEventCopyWithImpl(this._value, this._then);

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
    extends _$DiscountEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'DiscountEvent.started()';
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
    required TResult Function(AddDiscountRequestModel addDiscountRequestModel)
        addDiscount,
    required TResult Function() getDiscount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult? Function()? getDiscount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult Function()? getDiscount,
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
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_GetDiscount value) getDiscount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_GetDiscount value)? getDiscount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_GetDiscount value)? getDiscount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DiscountEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddDiscountRequestModel addDiscountRequestModel});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$DiscountEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDiscountRequestModel = null,
  }) {
    return _then(_$AddDiscountImpl(
      null == addDiscountRequestModel
          ? _value.addDiscountRequestModel
          : addDiscountRequestModel // ignore: cast_nullable_to_non_nullable
              as AddDiscountRequestModel,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl implements _AddDiscount {
  const _$AddDiscountImpl(this.addDiscountRequestModel);

  @override
  final AddDiscountRequestModel addDiscountRequestModel;

  @override
  String toString() {
    return 'DiscountEvent.addDiscount(addDiscountRequestModel: $addDiscountRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(
                    other.addDiscountRequestModel, addDiscountRequestModel) ||
                other.addDiscountRequestModel == addDiscountRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addDiscountRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddDiscountRequestModel addDiscountRequestModel)
        addDiscount,
    required TResult Function() getDiscount,
  }) {
    return addDiscount(addDiscountRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult? Function()? getDiscount,
  }) {
    return addDiscount?.call(addDiscountRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult Function()? getDiscount,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(addDiscountRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_GetDiscount value) getDiscount,
  }) {
    return addDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_GetDiscount value)? getDiscount,
  }) {
    return addDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_GetDiscount value)? getDiscount,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(this);
    }
    return orElse();
  }
}

abstract class _AddDiscount implements DiscountEvent {
  const factory _AddDiscount(
          final AddDiscountRequestModel addDiscountRequestModel) =
      _$AddDiscountImpl;

  AddDiscountRequestModel get addDiscountRequestModel;
  @JsonKey(ignore: true)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDiscountImplCopyWith<$Res> {
  factory _$$GetDiscountImplCopyWith(
          _$GetDiscountImpl value, $Res Function(_$GetDiscountImpl) then) =
      __$$GetDiscountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDiscountImplCopyWithImpl<$Res>
    extends _$DiscountEventCopyWithImpl<$Res, _$GetDiscountImpl>
    implements _$$GetDiscountImplCopyWith<$Res> {
  __$$GetDiscountImplCopyWithImpl(
      _$GetDiscountImpl _value, $Res Function(_$GetDiscountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDiscountImpl implements _GetDiscount {
  const _$GetDiscountImpl();

  @override
  String toString() {
    return 'DiscountEvent.getDiscount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDiscountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddDiscountRequestModel addDiscountRequestModel)
        addDiscount,
    required TResult Function() getDiscount,
  }) {
    return getDiscount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult? Function()? getDiscount,
  }) {
    return getDiscount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddDiscountRequestModel addDiscountRequestModel)?
        addDiscount,
    TResult Function()? getDiscount,
    required TResult orElse(),
  }) {
    if (getDiscount != null) {
      return getDiscount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_GetDiscount value) getDiscount,
  }) {
    return getDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_GetDiscount value)? getDiscount,
  }) {
    return getDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_GetDiscount value)? getDiscount,
    required TResult orElse(),
  }) {
    if (getDiscount != null) {
      return getDiscount(this);
    }
    return orElse();
  }
}

abstract class _GetDiscount implements DiscountEvent {
  const factory _GetDiscount() = _$GetDiscountImpl;
}

/// @nodoc
mixin _$DiscountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountStateCopyWith<$Res> {
  factory $DiscountStateCopyWith(
          DiscountState value, $Res Function(DiscountState) then) =
      _$DiscountStateCopyWithImpl<$Res, DiscountState>;
}

/// @nodoc
class _$DiscountStateCopyWithImpl<$Res, $Val extends DiscountState>
    implements $DiscountStateCopyWith<$Res> {
  _$DiscountStateCopyWithImpl(this._value, this._then);

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
    extends _$DiscountStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DiscountState.initial()';
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
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
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
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DiscountState {
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
    extends _$DiscountStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'DiscountState.loading()';
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
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
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
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DiscountState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AddDiscountSuccessImplCopyWith<$Res> {
  factory _$$AddDiscountSuccessImplCopyWith(_$AddDiscountSuccessImpl value,
          $Res Function(_$AddDiscountSuccessImpl) then) =
      __$$AddDiscountSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddDiscountResponseModel addDiscountResponseModel});
}

/// @nodoc
class __$$AddDiscountSuccessImplCopyWithImpl<$Res>
    extends _$DiscountStateCopyWithImpl<$Res, _$AddDiscountSuccessImpl>
    implements _$$AddDiscountSuccessImplCopyWith<$Res> {
  __$$AddDiscountSuccessImplCopyWithImpl(_$AddDiscountSuccessImpl _value,
      $Res Function(_$AddDiscountSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addDiscountResponseModel = null,
  }) {
    return _then(_$AddDiscountSuccessImpl(
      null == addDiscountResponseModel
          ? _value.addDiscountResponseModel
          : addDiscountResponseModel // ignore: cast_nullable_to_non_nullable
              as AddDiscountResponseModel,
    ));
  }
}

/// @nodoc

class _$AddDiscountSuccessImpl implements _AddDiscountSuccess {
  const _$AddDiscountSuccessImpl(this.addDiscountResponseModel);

  @override
  final AddDiscountResponseModel addDiscountResponseModel;

  @override
  String toString() {
    return 'DiscountState.addDiscountSuccess(addDiscountResponseModel: $addDiscountResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountSuccessImpl &&
            (identical(
                    other.addDiscountResponseModel, addDiscountResponseModel) ||
                other.addDiscountResponseModel == addDiscountResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addDiscountResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountSuccessImplCopyWith<_$AddDiscountSuccessImpl> get copyWith =>
      __$$AddDiscountSuccessImplCopyWithImpl<_$AddDiscountSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) {
    return addDiscountSuccess(addDiscountResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) {
    return addDiscountSuccess?.call(addDiscountResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addDiscountSuccess != null) {
      return addDiscountSuccess(addDiscountResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) {
    return addDiscountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return addDiscountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addDiscountSuccess != null) {
      return addDiscountSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddDiscountSuccess implements DiscountState {
  const factory _AddDiscountSuccess(
          final AddDiscountResponseModel addDiscountResponseModel) =
      _$AddDiscountSuccessImpl;

  AddDiscountResponseModel get addDiscountResponseModel;
  @JsonKey(ignore: true)
  _$$AddDiscountSuccessImplCopyWith<_$AddDiscountSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDiscountSuccessImplCopyWith<$Res> {
  factory _$$GetDiscountSuccessImplCopyWith(_$GetDiscountSuccessImpl value,
          $Res Function(_$GetDiscountSuccessImpl) then) =
      __$$GetDiscountSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Discount> discount});
}

/// @nodoc
class __$$GetDiscountSuccessImplCopyWithImpl<$Res>
    extends _$DiscountStateCopyWithImpl<$Res, _$GetDiscountSuccessImpl>
    implements _$$GetDiscountSuccessImplCopyWith<$Res> {
  __$$GetDiscountSuccessImplCopyWithImpl(_$GetDiscountSuccessImpl _value,
      $Res Function(_$GetDiscountSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$GetDiscountSuccessImpl(
      null == discount
          ? _value._discount
          : discount // ignore: cast_nullable_to_non_nullable
              as List<Discount>,
    ));
  }
}

/// @nodoc

class _$GetDiscountSuccessImpl implements _GetDiscountSuccess {
  const _$GetDiscountSuccessImpl(final List<Discount> discount)
      : _discount = discount;

  final List<Discount> _discount;
  @override
  List<Discount> get discount {
    if (_discount is EqualUnmodifiableListView) return _discount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discount);
  }

  @override
  String toString() {
    return 'DiscountState.getDiscountSuccess(discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDiscountSuccessImpl &&
            const DeepCollectionEquality().equals(other._discount, _discount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_discount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDiscountSuccessImplCopyWith<_$GetDiscountSuccessImpl> get copyWith =>
      __$$GetDiscountSuccessImplCopyWithImpl<_$GetDiscountSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) {
    return getDiscountSuccess(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) {
    return getDiscountSuccess?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getDiscountSuccess != null) {
      return getDiscountSuccess(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getDiscountSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getDiscountSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getDiscountSuccess != null) {
      return getDiscountSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetDiscountSuccess implements DiscountState {
  const factory _GetDiscountSuccess(final List<Discount> discount) =
      _$GetDiscountSuccessImpl;

  List<Discount> get discount;
  @JsonKey(ignore: true)
  _$$GetDiscountSuccessImplCopyWith<_$GetDiscountSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$DiscountStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'DiscountState.error(message: $message)';
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
    required TResult Function(AddDiscountResponseModel addDiscountResponseModel)
        addDiscountSuccess,
    required TResult Function(List<Discount> discount) getDiscountSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult? Function(List<Discount> discount)? getDiscountSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AddDiscountResponseModel addDiscountResponseModel)?
        addDiscountSuccess,
    TResult Function(List<Discount> discount)? getDiscountSuccess,
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
    required TResult Function(_AddDiscountSuccess value) addDiscountSuccess,
    required TResult Function(_GetDiscountSuccess value) getDiscountSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult? Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddDiscountSuccess value)? addDiscountSuccess,
    TResult Function(_GetDiscountSuccess value)? getDiscountSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DiscountState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProduct,
    required TResult Function(AddProductRequest addproduct) addProduct,
    required TResult Function(UpdateProductRequestModel updateProduct, int id)
        updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProduct,
    TResult? Function(AddProductRequest addproduct)? addProduct,
    TResult? Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProduct,
    TResult Function(AddProductRequest addproduct)? addProduct,
    TResult Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

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
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProductEvent.started()';
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
    required TResult Function() getProduct,
    required TResult Function(AddProductRequest addproduct) addProduct,
    required TResult Function(UpdateProductRequestModel updateProduct, int id)
        updateProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProduct,
    TResult? Function(AddProductRequest addproduct)? addProduct,
    TResult? Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProduct,
    TResult Function(AddProductRequest addproduct)? addProduct,
    TResult Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
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
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductImplCopyWith<$Res> {
  factory _$$GetProductImplCopyWith(
          _$GetProductImpl value, $Res Function(_$GetProductImpl) then) =
      __$$GetProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductImpl>
    implements _$$GetProductImplCopyWith<$Res> {
  __$$GetProductImplCopyWithImpl(
      _$GetProductImpl _value, $Res Function(_$GetProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductImpl implements _GetProduct {
  const _$GetProductImpl();

  @override
  String toString() {
    return 'ProductEvent.getProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProduct,
    required TResult Function(AddProductRequest addproduct) addProduct,
    required TResult Function(UpdateProductRequestModel updateProduct, int id)
        updateProduct,
  }) {
    return getProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProduct,
    TResult? Function(AddProductRequest addproduct)? addProduct,
    TResult? Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
  }) {
    return getProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProduct,
    TResult Function(AddProductRequest addproduct)? addProduct,
    TResult Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _GetProduct implements ProductEvent {
  const factory _GetProduct() = _$GetProductImpl;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddProductRequest addproduct});
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addproduct = null,
  }) {
    return _then(_$AddProductImpl(
      null == addproduct
          ? _value.addproduct
          : addproduct // ignore: cast_nullable_to_non_nullable
              as AddProductRequest,
    ));
  }
}

/// @nodoc

class _$AddProductImpl implements _AddProduct {
  const _$AddProductImpl(this.addproduct);

  @override
  final AddProductRequest addproduct;

  @override
  String toString() {
    return 'ProductEvent.addProduct(addproduct: $addproduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.addproduct, addproduct) ||
                other.addproduct == addproduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addproduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProduct,
    required TResult Function(AddProductRequest addproduct) addProduct,
    required TResult Function(UpdateProductRequestModel updateProduct, int id)
        updateProduct,
  }) {
    return addProduct(addproduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProduct,
    TResult? Function(AddProductRequest addproduct)? addProduct,
    TResult? Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
  }) {
    return addProduct?.call(addproduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProduct,
    TResult Function(AddProductRequest addproduct)? addProduct,
    TResult Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(addproduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductEvent {
  const factory _AddProduct(final AddProductRequest addproduct) =
      _$AddProductImpl;

  AddProductRequest get addproduct;
  @JsonKey(ignore: true)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductImplCopyWith<$Res> {
  factory _$$UpdateProductImplCopyWith(
          _$UpdateProductImpl value, $Res Function(_$UpdateProductImpl) then) =
      __$$UpdateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProductRequestModel updateProduct, int id});
}

/// @nodoc
class __$$UpdateProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$UpdateProductImpl>
    implements _$$UpdateProductImplCopyWith<$Res> {
  __$$UpdateProductImplCopyWithImpl(
      _$UpdateProductImpl _value, $Res Function(_$UpdateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProduct = null,
    Object? id = null,
  }) {
    return _then(_$UpdateProductImpl(
      null == updateProduct
          ? _value.updateProduct
          : updateProduct // ignore: cast_nullable_to_non_nullable
              as UpdateProductRequestModel,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateProductImpl implements _UpdateProduct {
  const _$UpdateProductImpl(this.updateProduct, this.id);

  @override
  final UpdateProductRequestModel updateProduct;
  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.updateProduct(updateProduct: $updateProduct, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.updateProduct, updateProduct) ||
                other.updateProduct == updateProduct) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateProduct, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProduct,
    required TResult Function(AddProductRequest addproduct) addProduct,
    required TResult Function(UpdateProductRequestModel updateProduct, int id)
        updateProduct,
  }) {
    return updateProduct(this.updateProduct, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProduct,
    TResult? Function(AddProductRequest addproduct)? addProduct,
    TResult? Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
  }) {
    return updateProduct?.call(this.updateProduct, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProduct,
    TResult Function(AddProductRequest addproduct)? addProduct,
    TResult Function(UpdateProductRequestModel updateProduct, int id)?
        updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this.updateProduct, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements ProductEvent {
  const factory _UpdateProduct(
          final UpdateProductRequestModel updateProduct, final int id) =
      _$UpdateProductImpl;

  UpdateProductRequestModel get updateProduct;
  int get id;
  @JsonKey(ignore: true)
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProductState.initial()';
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
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
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
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
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
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ProductState.loading()';
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
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
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
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetProductSuccessImplCopyWith<$Res> {
  factory _$$GetProductSuccessImplCopyWith(_$GetProductSuccessImpl value,
          $Res Function(_$GetProductSuccessImpl) then) =
      __$$GetProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductsResponseModel productsResponseModel});
}

/// @nodoc
class __$$GetProductSuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$GetProductSuccessImpl>
    implements _$$GetProductSuccessImplCopyWith<$Res> {
  __$$GetProductSuccessImplCopyWithImpl(_$GetProductSuccessImpl _value,
      $Res Function(_$GetProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsResponseModel = null,
  }) {
    return _then(_$GetProductSuccessImpl(
      null == productsResponseModel
          ? _value.productsResponseModel
          : productsResponseModel // ignore: cast_nullable_to_non_nullable
              as ProductsResponseModel,
    ));
  }
}

/// @nodoc

class _$GetProductSuccessImpl implements _GetProductSuccess {
  const _$GetProductSuccessImpl(this.productsResponseModel);

  @override
  final ProductsResponseModel productsResponseModel;

  @override
  String toString() {
    return 'ProductState.getProductSuccess(productsResponseModel: $productsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductSuccessImpl &&
            (identical(other.productsResponseModel, productsResponseModel) ||
                other.productsResponseModel == productsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productsResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductSuccessImplCopyWith<_$GetProductSuccessImpl> get copyWith =>
      __$$GetProductSuccessImplCopyWithImpl<_$GetProductSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return getProductSuccess(productsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return getProductSuccess?.call(productsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
    required TResult orElse(),
  }) {
    if (getProductSuccess != null) {
      return getProductSuccess(productsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getProductSuccess != null) {
      return getProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetProductSuccess implements ProductState {
  const factory _GetProductSuccess(
          final ProductsResponseModel productsResponseModel) =
      _$GetProductSuccessImpl;

  ProductsResponseModel get productsResponseModel;
  @JsonKey(ignore: true)
  _$$GetProductSuccessImplCopyWith<_$GetProductSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductSuccessImplCopyWith<$Res> {
  factory _$$AddProductSuccessImplCopyWith(_$AddProductSuccessImpl value,
          $Res Function(_$AddProductSuccessImpl) then) =
      __$$AddProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddProductResponseModel product});
}

/// @nodoc
class __$$AddProductSuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$AddProductSuccessImpl>
    implements _$$AddProductSuccessImplCopyWith<$Res> {
  __$$AddProductSuccessImplCopyWithImpl(_$AddProductSuccessImpl _value,
      $Res Function(_$AddProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AddProductResponseModel,
    ));
  }
}

/// @nodoc

class _$AddProductSuccessImpl implements _AddProductSuccess {
  const _$AddProductSuccessImpl(this.product);

  @override
  final AddProductResponseModel product;

  @override
  String toString() {
    return 'ProductState.addProductSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductSuccessImplCopyWith<_$AddProductSuccessImpl> get copyWith =>
      __$$AddProductSuccessImplCopyWithImpl<_$AddProductSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return addProductSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return addProductSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
    required TResult orElse(),
  }) {
    if (addProductSuccess != null) {
      return addProductSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return addProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return addProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addProductSuccess != null) {
      return addProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddProductSuccess implements ProductState {
  const factory _AddProductSuccess(final AddProductResponseModel product) =
      _$AddProductSuccessImpl;

  AddProductResponseModel get product;
  @JsonKey(ignore: true)
  _$$AddProductSuccessImplCopyWith<_$AddProductSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductSuccessImplCopyWith<$Res> {
  factory _$$UpdateProductSuccessImplCopyWith(_$UpdateProductSuccessImpl value,
          $Res Function(_$UpdateProductSuccessImpl) then) =
      __$$UpdateProductSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProductResponseModel product});
}

/// @nodoc
class __$$UpdateProductSuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$UpdateProductSuccessImpl>
    implements _$$UpdateProductSuccessImplCopyWith<$Res> {
  __$$UpdateProductSuccessImplCopyWithImpl(_$UpdateProductSuccessImpl _value,
      $Res Function(_$UpdateProductSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$UpdateProductSuccessImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as UpdateProductResponseModel,
    ));
  }
}

/// @nodoc

class _$UpdateProductSuccessImpl implements _UpdateProductSuccess {
  const _$UpdateProductSuccessImpl(this.product);

  @override
  final UpdateProductResponseModel product;

  @override
  String toString() {
    return 'ProductState.updateProductSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductSuccessImplCopyWith<_$UpdateProductSuccessImpl>
      get copyWith =>
          __$$UpdateProductSuccessImplCopyWithImpl<_$UpdateProductSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return updateProductSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return updateProductSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
    required TResult orElse(),
  }) {
    if (updateProductSuccess != null) {
      return updateProductSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return updateProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return updateProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateProductSuccess != null) {
      return updateProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductSuccess implements ProductState {
  const factory _UpdateProductSuccess(
      final UpdateProductResponseModel product) = _$UpdateProductSuccessImpl;

  UpdateProductResponseModel get product;
  @JsonKey(ignore: true)
  _$$UpdateProductSuccessImplCopyWith<_$UpdateProductSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mesage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mesage = null,
  }) {
    return _then(_$ErrorImpl(
      null == mesage
          ? _value.mesage
          : mesage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.mesage);

  @override
  final String mesage;

  @override
  String toString() {
    return 'ProductState.error(mesage: $mesage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.mesage, mesage) || other.mesage == mesage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mesage);

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
    required TResult Function(ProductsResponseModel productsResponseModel)
        getProductSuccess,
    required TResult Function(AddProductResponseModel product)
        addProductSuccess,
    required TResult Function(UpdateProductResponseModel product)
        updateProductSuccess,
    required TResult Function(String mesage) error,
  }) {
    return error(mesage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult? Function(AddProductResponseModel product)? addProductSuccess,
    TResult? Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult? Function(String mesage)? error,
  }) {
    return error?.call(mesage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductsResponseModel productsResponseModel)?
        getProductSuccess,
    TResult Function(AddProductResponseModel product)? addProductSuccess,
    TResult Function(UpdateProductResponseModel product)? updateProductSuccess,
    TResult Function(String mesage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(mesage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetProductSuccess value) getProductSuccess,
    required TResult Function(_AddProductSuccess value) addProductSuccess,
    required TResult Function(_UpdateProductSuccess value) updateProductSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetProductSuccess value)? getProductSuccess,
    TResult? Function(_AddProductSuccess value)? addProductSuccess,
    TResult? Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetProductSuccess value)? getProductSuccess,
    TResult Function(_AddProductSuccess value)? addProductSuccess,
    TResult Function(_UpdateProductSuccess value)? updateProductSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error(final String mesage) = _$ErrorImpl;

  String get mesage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestModel loginRequestModel) login,
    required TResult Function() logout,
    required TResult Function() getAuthLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestModel loginRequestModel)? login,
    TResult? Function()? logout,
    TResult? Function()? getAuthLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestModel loginRequestModel)? login,
    TResult Function()? logout,
    TResult Function()? getAuthLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GetAuthLocal value) getAuthLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GetAuthLocal value)? getAuthLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_GetAuthLocal value)? getAuthLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AuthEvent.started()';
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
    required TResult Function(LoginRequestModel loginRequestModel) login,
    required TResult Function() logout,
    required TResult Function() getAuthLocal,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestModel loginRequestModel)? login,
    TResult? Function()? logout,
    TResult? Function()? getAuthLocal,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestModel loginRequestModel)? login,
    TResult Function()? logout,
    TResult Function()? getAuthLocal,
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
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GetAuthLocal value) getAuthLocal,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GetAuthLocal value)? getAuthLocal,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_GetAuthLocal value)? getAuthLocal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel loginRequestModel});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestModel = null,
  }) {
    return _then(_$LoginImpl(
      null == loginRequestModel
          ? _value.loginRequestModel
          : loginRequestModel // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.loginRequestModel);

  @override
  final LoginRequestModel loginRequestModel;

  @override
  String toString() {
    return 'AuthEvent.login(loginRequestModel: $loginRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.loginRequestModel, loginRequestModel) ||
                other.loginRequestModel == loginRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestModel loginRequestModel) login,
    required TResult Function() logout,
    required TResult Function() getAuthLocal,
  }) {
    return login(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestModel loginRequestModel)? login,
    TResult? Function()? logout,
    TResult? Function()? getAuthLocal,
  }) {
    return login?.call(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestModel loginRequestModel)? login,
    TResult Function()? logout,
    TResult Function()? getAuthLocal,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GetAuthLocal value) getAuthLocal,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GetAuthLocal value)? getAuthLocal,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_GetAuthLocal value)? getAuthLocal,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginRequestModel loginRequestModel) = _$LoginImpl;

  LoginRequestModel get loginRequestModel;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestModel loginRequestModel) login,
    required TResult Function() logout,
    required TResult Function() getAuthLocal,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestModel loginRequestModel)? login,
    TResult? Function()? logout,
    TResult? Function()? getAuthLocal,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestModel loginRequestModel)? login,
    TResult Function()? logout,
    TResult Function()? getAuthLocal,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GetAuthLocal value) getAuthLocal,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GetAuthLocal value)? getAuthLocal,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_GetAuthLocal value)? getAuthLocal,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$GetAuthLocalImplCopyWith<$Res> {
  factory _$$GetAuthLocalImplCopyWith(
          _$GetAuthLocalImpl value, $Res Function(_$GetAuthLocalImpl) then) =
      __$$GetAuthLocalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAuthLocalImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetAuthLocalImpl>
    implements _$$GetAuthLocalImplCopyWith<$Res> {
  __$$GetAuthLocalImplCopyWithImpl(
      _$GetAuthLocalImpl _value, $Res Function(_$GetAuthLocalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAuthLocalImpl implements _GetAuthLocal {
  const _$GetAuthLocalImpl();

  @override
  String toString() {
    return 'AuthEvent.getAuthLocal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAuthLocalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestModel loginRequestModel) login,
    required TResult Function() logout,
    required TResult Function() getAuthLocal,
  }) {
    return getAuthLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LoginRequestModel loginRequestModel)? login,
    TResult? Function()? logout,
    TResult? Function()? getAuthLocal,
  }) {
    return getAuthLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestModel loginRequestModel)? login,
    TResult Function()? logout,
    TResult Function()? getAuthLocal,
    required TResult orElse(),
  }) {
    if (getAuthLocal != null) {
      return getAuthLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GetAuthLocal value) getAuthLocal,
  }) {
    return getAuthLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GetAuthLocal value)? getAuthLocal,
  }) {
    return getAuthLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_GetAuthLocal value)? getAuthLocal,
    required TResult orElse(),
  }) {
    if (getAuthLocal != null) {
      return getAuthLocal(this);
    }
    return orElse();
  }
}

abstract class _GetAuthLocal implements AuthEvent {
  const factory _GetAuthLocal() = _$GetAuthLocalImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
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
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
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
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel loginResponseModel});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponseModel = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == loginResponseModel
          ? _value.loginResponseModel
          : loginResponseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl(this.loginResponseModel);

  @override
  final LoginResponseModel loginResponseModel;

  @override
  String toString() {
    return 'AuthState.loginSuccess(loginResponseModel: $loginResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.loginResponseModel, loginResponseModel) ||
                other.loginResponseModel == loginResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return loginSuccess(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return loginSuccess?.call(loginResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(final LoginResponseModel loginResponseModel) =
      _$LoginSuccessImpl;

  LoginResponseModel get loginResponseModel;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LogoutSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutSuccessImpl implements _LogoutSuccess {
  const _$LogoutSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.logoutSucess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutSuccessImplCopyWith<_$LogoutSuccessImpl> get copyWith =>
      __$$LogoutSuccessImplCopyWithImpl<_$LogoutSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return logoutSucess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return logoutSucess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (logoutSucess != null) {
      return logoutSucess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return logoutSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return logoutSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (logoutSucess != null) {
      return logoutSucess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess(final String message) = _$LogoutSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LogoutSuccessImplCopyWith<_$LogoutSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAuthLocalSucessImplCopyWith<$Res> {
  factory _$$GetAuthLocalSucessImplCopyWith(_$GetAuthLocalSucessImpl value,
          $Res Function(_$GetAuthLocalSucessImpl) then) =
      __$$GetAuthLocalSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel loginRequestModel});
}

/// @nodoc
class __$$GetAuthLocalSucessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GetAuthLocalSucessImpl>
    implements _$$GetAuthLocalSucessImplCopyWith<$Res> {
  __$$GetAuthLocalSucessImplCopyWithImpl(_$GetAuthLocalSucessImpl _value,
      $Res Function(_$GetAuthLocalSucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginRequestModel = null,
  }) {
    return _then(_$GetAuthLocalSucessImpl(
      null == loginRequestModel
          ? _value.loginRequestModel
          : loginRequestModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }
}

/// @nodoc

class _$GetAuthLocalSucessImpl implements _GetAuthLocalSucess {
  const _$GetAuthLocalSucessImpl(this.loginRequestModel);

  @override
  final LoginResponseModel loginRequestModel;

  @override
  String toString() {
    return 'AuthState.getAuthLocalSucess(loginRequestModel: $loginRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAuthLocalSucessImpl &&
            (identical(other.loginRequestModel, loginRequestModel) ||
                other.loginRequestModel == loginRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAuthLocalSucessImplCopyWith<_$GetAuthLocalSucessImpl> get copyWith =>
      __$$GetAuthLocalSucessImplCopyWithImpl<_$GetAuthLocalSucessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return getAuthLocalSucess(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return getAuthLocalSucess?.call(loginRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getAuthLocalSucess != null) {
      return getAuthLocalSucess(loginRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return getAuthLocalSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return getAuthLocalSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getAuthLocalSucess != null) {
      return getAuthLocalSucess(this);
    }
    return orElse();
  }
}

abstract class _GetAuthLocalSucess implements AuthState {
  const factory _GetAuthLocalSucess(
      final LoginResponseModel loginRequestModel) = _$GetAuthLocalSucessImpl;

  LoginResponseModel get loginRequestModel;
  @JsonKey(ignore: true)
  _$$GetAuthLocalSucessImplCopyWith<_$GetAuthLocalSucessImpl> get copyWith =>
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AuthState.error(message: $message)';
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
    required TResult Function(LoginResponseModel loginResponseModel)
        loginSuccess,
    required TResult Function(String message) logoutSucess,
    required TResult Function(LoginResponseModel loginRequestModel)
        getAuthLocalSucess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult? Function(String message)? logoutSucess,
    TResult? Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel loginResponseModel)? loginSuccess,
    TResult Function(String message)? logoutSucess,
    TResult Function(LoginResponseModel loginRequestModel)? getAuthLocalSucess,
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
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSucess,
    required TResult Function(_GetAuthLocalSucess value) getAuthLocalSucess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSucess,
    TResult? Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSucess,
    TResult Function(_GetAuthLocalSucess value)? getAuthLocalSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

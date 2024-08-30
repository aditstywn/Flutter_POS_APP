part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loginSuccess(LoginResponseModel loginResponseModel) =
      _LoginSuccess;
  const factory AuthState.logoutSucess(String message) = _LogoutSuccess;
  const factory AuthState.getAuthLocalSucess(
      LoginResponseModel loginRequestModel) = _GetAuthLocalSucess;
  const factory AuthState.error(String message) = _Error;
}

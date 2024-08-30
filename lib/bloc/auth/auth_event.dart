part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(LoginRequestModel loginRequestModel) = _Login;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.getAuthLocal() = _GetAuthLocal;
}

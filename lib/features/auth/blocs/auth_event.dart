part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authAppStarted() = _AuthAppStarted;
  const factory AuthEvent.authSignIn({
    required String email,
    required String password,
  }) = _AuthSignIn;
  const factory AuthEvent.authRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) = _AuthRegister;
  const factory AuthEvent.authSignOut({
    String? message,
  }) = _AuthSignOut;
}

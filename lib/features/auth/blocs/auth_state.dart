part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated({String? error}) =
      _AuthUnauthenticated;
  const factory AuthState.authenticating() = _AuthAuthenticating;
  const factory AuthState.registered({
    required Map<String, dynamic> user,
  }) = _AuthRegistered;
  const factory AuthState.authenticated({
    required Map<String, dynamic> user,
  }) = _AuthAuthenticated;
  const factory AuthState.noInternetConnection() = _NoInternetConnection;
  const factory AuthState.authSignedOut() = _AuthSignedOut;
}

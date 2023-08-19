import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opticash/app/app_locator.dart';
import 'package:opticash/core/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    AuthRepository? authRepository,
  })  : _authRepository = authRepository ?? locator<AuthRepository>(),
        super(const _AuthUnauthenticated()) {
    on<_AuthAppStarted>(_onAuthAppStarted);
    on<_AuthSignIn>(_onAuthSignIn);
    on<_AuthRegister>(_onAuthRegister);
    on<_AuthSignOut>(_onAuthSignOut);
  }

  /// Auth repository.
  final AuthRepository _authRepository;

  Future<void> _onAuthAppStarted(
    _AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _AuthUnauthenticated());
  }

  Future<void> _onAuthSignIn(
    _AuthSignIn event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _AuthAuthenticating());
      final user = await _authRepository.login(
        email: event.email,
        password: event.password,
      );
      emit(_AuthAuthenticated(user: user));
    } on AuthException catch (e) {
      emit(_AuthUnauthenticated(error: e.message));
    }
  }

  Future<void> _onAuthRegister(
    _AuthRegister event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const _AuthAuthenticating());
      final user = await _authRepository.register(
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        password: event.password,
      );
      emit(_AuthRegistered(user: user));
    } on AuthException catch (e) {
      emit(_AuthUnauthenticated(error: e.message));
    }
  }

  Future<void> _onAuthSignOut(
    _AuthSignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _AuthSignedOut());
  }
}

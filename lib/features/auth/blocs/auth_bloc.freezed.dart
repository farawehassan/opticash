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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authAppStarted,
    required TResult Function(String email, String password) authSignIn,
    required TResult Function(
            String firstName, String lastName, String email, String password)
        authRegister,
    required TResult Function(String? message) authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authAppStarted,
    TResult? Function(String email, String password)? authSignIn,
    TResult? Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult? Function(String? message)? authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authAppStarted,
    TResult Function(String email, String password)? authSignIn,
    TResult Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult Function(String? message)? authSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) authAppStarted,
    required TResult Function(_AuthSignIn value) authSignIn,
    required TResult Function(_AuthRegister value) authRegister,
    required TResult Function(_AuthSignOut value) authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? authAppStarted,
    TResult? Function(_AuthSignIn value)? authSignIn,
    TResult? Function(_AuthRegister value)? authRegister,
    TResult? Function(_AuthSignOut value)? authSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? authAppStarted,
    TResult Function(_AuthSignIn value)? authSignIn,
    TResult Function(_AuthRegister value)? authRegister,
    TResult Function(_AuthSignOut value)? authSignOut,
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
abstract class _$$_AuthAppStartedCopyWith<$Res> {
  factory _$$_AuthAppStartedCopyWith(
          _$_AuthAppStarted value, $Res Function(_$_AuthAppStarted) then) =
      __$$_AuthAppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthAppStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthAppStarted>
    implements _$$_AuthAppStartedCopyWith<$Res> {
  __$$_AuthAppStartedCopyWithImpl(
      _$_AuthAppStarted _value, $Res Function(_$_AuthAppStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthAppStarted implements _AuthAppStarted {
  const _$_AuthAppStarted();

  @override
  String toString() {
    return 'AuthEvent.authAppStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthAppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authAppStarted,
    required TResult Function(String email, String password) authSignIn,
    required TResult Function(
            String firstName, String lastName, String email, String password)
        authRegister,
    required TResult Function(String? message) authSignOut,
  }) {
    return authAppStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authAppStarted,
    TResult? Function(String email, String password)? authSignIn,
    TResult? Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult? Function(String? message)? authSignOut,
  }) {
    return authAppStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authAppStarted,
    TResult Function(String email, String password)? authSignIn,
    TResult Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult Function(String? message)? authSignOut,
    required TResult orElse(),
  }) {
    if (authAppStarted != null) {
      return authAppStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) authAppStarted,
    required TResult Function(_AuthSignIn value) authSignIn,
    required TResult Function(_AuthRegister value) authRegister,
    required TResult Function(_AuthSignOut value) authSignOut,
  }) {
    return authAppStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? authAppStarted,
    TResult? Function(_AuthSignIn value)? authSignIn,
    TResult? Function(_AuthRegister value)? authRegister,
    TResult? Function(_AuthSignOut value)? authSignOut,
  }) {
    return authAppStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? authAppStarted,
    TResult Function(_AuthSignIn value)? authSignIn,
    TResult Function(_AuthRegister value)? authRegister,
    TResult Function(_AuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) {
    if (authAppStarted != null) {
      return authAppStarted(this);
    }
    return orElse();
  }
}

abstract class _AuthAppStarted implements AuthEvent {
  const factory _AuthAppStarted() = _$_AuthAppStarted;
}

/// @nodoc
abstract class _$$_AuthSignInCopyWith<$Res> {
  factory _$$_AuthSignInCopyWith(
          _$_AuthSignIn value, $Res Function(_$_AuthSignIn) then) =
      __$$_AuthSignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthSignIn>
    implements _$$_AuthSignInCopyWith<$Res> {
  __$$_AuthSignInCopyWithImpl(
      _$_AuthSignIn _value, $Res Function(_$_AuthSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthSignIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthSignIn implements _AuthSignIn {
  const _$_AuthSignIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.authSignIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignInCopyWith<_$_AuthSignIn> get copyWith =>
      __$$_AuthSignInCopyWithImpl<_$_AuthSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authAppStarted,
    required TResult Function(String email, String password) authSignIn,
    required TResult Function(
            String firstName, String lastName, String email, String password)
        authRegister,
    required TResult Function(String? message) authSignOut,
  }) {
    return authSignIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authAppStarted,
    TResult? Function(String email, String password)? authSignIn,
    TResult? Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult? Function(String? message)? authSignOut,
  }) {
    return authSignIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authAppStarted,
    TResult Function(String email, String password)? authSignIn,
    TResult Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult Function(String? message)? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignIn != null) {
      return authSignIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) authAppStarted,
    required TResult Function(_AuthSignIn value) authSignIn,
    required TResult Function(_AuthRegister value) authRegister,
    required TResult Function(_AuthSignOut value) authSignOut,
  }) {
    return authSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? authAppStarted,
    TResult? Function(_AuthSignIn value)? authSignIn,
    TResult? Function(_AuthRegister value)? authRegister,
    TResult? Function(_AuthSignOut value)? authSignOut,
  }) {
    return authSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? authAppStarted,
    TResult Function(_AuthSignIn value)? authSignIn,
    TResult Function(_AuthRegister value)? authRegister,
    TResult Function(_AuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignIn != null) {
      return authSignIn(this);
    }
    return orElse();
  }
}

abstract class _AuthSignIn implements AuthEvent {
  const factory _AuthSignIn(
      {required final String email,
      required final String password}) = _$_AuthSignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthSignInCopyWith<_$_AuthSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthRegisterCopyWith<$Res> {
  factory _$$_AuthRegisterCopyWith(
          _$_AuthRegister value, $Res Function(_$_AuthRegister) then) =
      __$$_AuthRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, String email, String password});
}

/// @nodoc
class __$$_AuthRegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthRegister>
    implements _$$_AuthRegisterCopyWith<$Res> {
  __$$_AuthRegisterCopyWithImpl(
      _$_AuthRegister _value, $Res Function(_$_AuthRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthRegister(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthRegister implements _AuthRegister {
  const _$_AuthRegister(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.authRegister(firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRegister &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRegisterCopyWith<_$_AuthRegister> get copyWith =>
      __$$_AuthRegisterCopyWithImpl<_$_AuthRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authAppStarted,
    required TResult Function(String email, String password) authSignIn,
    required TResult Function(
            String firstName, String lastName, String email, String password)
        authRegister,
    required TResult Function(String? message) authSignOut,
  }) {
    return authRegister(firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authAppStarted,
    TResult? Function(String email, String password)? authSignIn,
    TResult? Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult? Function(String? message)? authSignOut,
  }) {
    return authRegister?.call(firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authAppStarted,
    TResult Function(String email, String password)? authSignIn,
    TResult Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult Function(String? message)? authSignOut,
    required TResult orElse(),
  }) {
    if (authRegister != null) {
      return authRegister(firstName, lastName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) authAppStarted,
    required TResult Function(_AuthSignIn value) authSignIn,
    required TResult Function(_AuthRegister value) authRegister,
    required TResult Function(_AuthSignOut value) authSignOut,
  }) {
    return authRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? authAppStarted,
    TResult? Function(_AuthSignIn value)? authSignIn,
    TResult? Function(_AuthRegister value)? authRegister,
    TResult? Function(_AuthSignOut value)? authSignOut,
  }) {
    return authRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? authAppStarted,
    TResult Function(_AuthSignIn value)? authSignIn,
    TResult Function(_AuthRegister value)? authRegister,
    TResult Function(_AuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) {
    if (authRegister != null) {
      return authRegister(this);
    }
    return orElse();
  }
}

abstract class _AuthRegister implements AuthEvent {
  const factory _AuthRegister(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String password}) = _$_AuthRegister;

  String get firstName;
  String get lastName;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthRegisterCopyWith<_$_AuthRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthSignOutCopyWith<$Res> {
  factory _$$_AuthSignOutCopyWith(
          _$_AuthSignOut value, $Res Function(_$_AuthSignOut) then) =
      __$$_AuthSignOutCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_AuthSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthSignOut>
    implements _$$_AuthSignOutCopyWith<$Res> {
  __$$_AuthSignOutCopyWithImpl(
      _$_AuthSignOut _value, $Res Function(_$_AuthSignOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_AuthSignOut(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthSignOut implements _AuthSignOut {
  const _$_AuthSignOut({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthEvent.authSignOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignOutCopyWith<_$_AuthSignOut> get copyWith =>
      __$$_AuthSignOutCopyWithImpl<_$_AuthSignOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authAppStarted,
    required TResult Function(String email, String password) authSignIn,
    required TResult Function(
            String firstName, String lastName, String email, String password)
        authRegister,
    required TResult Function(String? message) authSignOut,
  }) {
    return authSignOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authAppStarted,
    TResult? Function(String email, String password)? authSignIn,
    TResult? Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult? Function(String? message)? authSignOut,
  }) {
    return authSignOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authAppStarted,
    TResult Function(String email, String password)? authSignIn,
    TResult Function(
            String firstName, String lastName, String email, String password)?
        authRegister,
    TResult Function(String? message)? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignOut != null) {
      return authSignOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) authAppStarted,
    required TResult Function(_AuthSignIn value) authSignIn,
    required TResult Function(_AuthRegister value) authRegister,
    required TResult Function(_AuthSignOut value) authSignOut,
  }) {
    return authSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? authAppStarted,
    TResult? Function(_AuthSignIn value)? authSignIn,
    TResult? Function(_AuthRegister value)? authRegister,
    TResult? Function(_AuthSignOut value)? authSignOut,
  }) {
    return authSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? authAppStarted,
    TResult Function(_AuthSignIn value)? authSignIn,
    TResult Function(_AuthRegister value)? authRegister,
    TResult Function(_AuthSignOut value)? authSignOut,
    required TResult orElse(),
  }) {
    if (authSignOut != null) {
      return authSignOut(this);
    }
    return orElse();
  }
}

abstract class _AuthSignOut implements AuthEvent {
  const factory _AuthSignOut({final String? message}) = _$_AuthSignOut;

  String? get message;
  @JsonKey(ignore: true)
  _$$_AuthSignOutCopyWith<_$_AuthSignOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
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
abstract class _$$_AuthUnauthenticatedCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedCopyWith(_$_AuthUnauthenticated value,
          $Res Function(_$_AuthUnauthenticated) then) =
      __$$_AuthUnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_AuthUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUnauthenticated>
    implements _$$_AuthUnauthenticatedCopyWith<$Res> {
  __$$_AuthUnauthenticatedCopyWithImpl(_$_AuthUnauthenticated _value,
      $Res Function(_$_AuthUnauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AuthUnauthenticated(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthUnauthenticated implements _AuthUnauthenticated {
  const _$_AuthUnauthenticated({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.unauthenticated(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticated &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      __$$_AuthUnauthenticatedCopyWithImpl<_$_AuthUnauthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return unauthenticated(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return unauthenticated?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticated implements AuthState {
  const factory _AuthUnauthenticated({final String? error}) =
      _$_AuthUnauthenticated;

  String? get error;
  @JsonKey(ignore: true)
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthAuthenticatingCopyWith<$Res> {
  factory _$$_AuthAuthenticatingCopyWith(_$_AuthAuthenticating value,
          $Res Function(_$_AuthAuthenticating) then) =
      __$$_AuthAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthAuthenticatingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthAuthenticating>
    implements _$$_AuthAuthenticatingCopyWith<$Res> {
  __$$_AuthAuthenticatingCopyWithImpl(
      _$_AuthAuthenticating _value, $Res Function(_$_AuthAuthenticating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthAuthenticating implements _AuthAuthenticating {
  const _$_AuthAuthenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthAuthenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticating implements AuthState {
  const factory _AuthAuthenticating() = _$_AuthAuthenticating;
}

/// @nodoc
abstract class _$$_AuthRegisteredCopyWith<$Res> {
  factory _$$_AuthRegisteredCopyWith(
          _$_AuthRegistered value, $Res Function(_$_AuthRegistered) then) =
      __$$_AuthRegisteredCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> user});
}

/// @nodoc
class __$$_AuthRegisteredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthRegistered>
    implements _$$_AuthRegisteredCopyWith<$Res> {
  __$$_AuthRegisteredCopyWithImpl(
      _$_AuthRegistered _value, $Res Function(_$_AuthRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthRegistered(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_AuthRegistered implements _AuthRegistered {
  const _$_AuthRegistered({required final Map<String, dynamic> user})
      : _user = user;

  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString() {
    return 'AuthState.registered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthRegistered &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthRegisteredCopyWith<_$_AuthRegistered> get copyWith =>
      __$$_AuthRegisteredCopyWithImpl<_$_AuthRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return registered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return registered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _AuthRegistered implements AuthState {
  const factory _AuthRegistered({required final Map<String, dynamic> user}) =
      _$_AuthRegistered;

  Map<String, dynamic> get user;
  @JsonKey(ignore: true)
  _$$_AuthRegisteredCopyWith<_$_AuthRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthAuthenticatedCopyWith<$Res> {
  factory _$$_AuthAuthenticatedCopyWith(_$_AuthAuthenticated value,
          $Res Function(_$_AuthAuthenticated) then) =
      __$$_AuthAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> user});
}

/// @nodoc
class __$$_AuthAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthAuthenticated>
    implements _$$_AuthAuthenticatedCopyWith<$Res> {
  __$$_AuthAuthenticatedCopyWithImpl(
      _$_AuthAuthenticated _value, $Res Function(_$_AuthAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthAuthenticated(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_AuthAuthenticated implements _AuthAuthenticated {
  const _$_AuthAuthenticated({required final Map<String, dynamic> user})
      : _user = user;

  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticated &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      __$$_AuthAuthenticatedCopyWithImpl<_$_AuthAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticated implements AuthState {
  const factory _AuthAuthenticated({required final Map<String, dynamic> user}) =
      _$_AuthAuthenticated;

  Map<String, dynamic> get user;
  @JsonKey(ignore: true)
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoInternetConnectionCopyWith<$Res> {
  factory _$$_NoInternetConnectionCopyWith(_$_NoInternetConnection value,
          $Res Function(_$_NoInternetConnection) then) =
      __$$_NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetConnectionCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_NoInternetConnection>
    implements _$$_NoInternetConnectionCopyWith<$Res> {
  __$$_NoInternetConnectionCopyWithImpl(_$_NoInternetConnection _value,
      $Res Function(_$_NoInternetConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoInternetConnection implements _NoInternetConnection {
  const _$_NoInternetConnection();

  @override
  String toString() {
    return 'AuthState.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements AuthState {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
}

/// @nodoc
abstract class _$$_AuthSignedOutCopyWith<$Res> {
  factory _$$_AuthSignedOutCopyWith(
          _$_AuthSignedOut value, $Res Function(_$_AuthSignedOut) then) =
      __$$_AuthSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthSignedOutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthSignedOut>
    implements _$$_AuthSignedOutCopyWith<$Res> {
  __$$_AuthSignedOutCopyWithImpl(
      _$_AuthSignedOut _value, $Res Function(_$_AuthSignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthSignedOut implements _AuthSignedOut {
  const _$_AuthSignedOut();

  @override
  String toString() {
    return 'AuthState.authSignedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(Map<String, dynamic> user) registered,
    required TResult Function(Map<String, dynamic> user) authenticated,
    required TResult Function() noInternetConnection,
    required TResult Function() authSignedOut,
  }) {
    return authSignedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(Map<String, dynamic> user)? registered,
    TResult? Function(Map<String, dynamic> user)? authenticated,
    TResult? Function()? noInternetConnection,
    TResult? Function()? authSignedOut,
  }) {
    return authSignedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(Map<String, dynamic> user)? registered,
    TResult Function(Map<String, dynamic> user)? authenticated,
    TResult Function()? noInternetConnection,
    TResult Function()? authSignedOut,
    required TResult orElse(),
  }) {
    if (authSignedOut != null) {
      return authSignedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticating value) authenticating,
    required TResult Function(_AuthRegistered value) registered,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
    required TResult Function(_AuthSignedOut value) authSignedOut,
  }) {
    return authSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticating value)? authenticating,
    TResult? Function(_AuthRegistered value)? registered,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
    TResult? Function(_AuthSignedOut value)? authSignedOut,
  }) {
    return authSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticating value)? authenticating,
    TResult Function(_AuthRegistered value)? registered,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    TResult Function(_AuthSignedOut value)? authSignedOut,
    required TResult orElse(),
  }) {
    if (authSignedOut != null) {
      return authSignedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthSignedOut implements AuthState {
  const factory _AuthSignedOut() = _$_AuthSignedOut;
}

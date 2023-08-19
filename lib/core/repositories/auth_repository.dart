// ignore_for_file: unused_element

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opticash/core/core.dart';

/// {@template auth_repository_exception}
/// General exception for [AuthRepository] methods.
/// {@endtemplate}
class AuthException implements Exception {
  /// {@macro auth_repository_exception}
  const AuthException({String? message})
      : message = message ?? 'Something went wrong';

  /// Error message.
  final String? message;

  @override
  String toString() => message!;
}

/// {@template auth_repository}
/// Auth repository interacts with the auth API.
/// {@endtemplate}
class AuthRepository {
  /// {@macro auth_repository}
  AuthRepository({
    required String baseUrl,
    http.Client? client,
  })  : _baseUrl = baseUrl,
        _client = client ?? http.Client();

  final http.Client _client;
  final String _baseUrl;

  /// Login endpoint
  String _loginEndpoint() => '$_baseUrl/user/test/login';

  /// Register endpoint
  String _registerEndpoint() => '$_baseUrl/user/test/register';

  /// Login a user
  ///
  /// Returns [Map] on success.
  /// Throws [AuthException] when operation fails.
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final url = _loginEndpoint();
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      final body = jsonEncode(
        {
          'email': email,
          'password': password,
        },
      );
      return await APIHelper.request<Map<String, dynamic>>(
        request: _client.post(
          Uri.parse(url),
          headers: headers,
          body: body,
        ),
        onSuccessMap: (value) => value,
      );
    } on APIException catch (e) {
      throw AuthException(message: e.message);
    } catch (e) {
      throw const AuthException();
    }
  }

  /// Register a user
  ///
  /// Returns [Map] on success.
  /// Throws [AuthException] when operation fails.
  Future<Map<String, dynamic>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      final url = _registerEndpoint();
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      final body = jsonEncode(
        {
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'password': password,
        },
      );
      return await APIHelper.request<Map<String, dynamic>>(
        request: _client.post(
          Uri.parse(url),
          headers: headers,
          body: body,
        ),
        onSuccessMap: (value) => value,
      );
    } on APIException catch (e) {
      throw AuthException(message: e.message);
    } catch (e) {
      throw const AuthException();
    }
  }
}

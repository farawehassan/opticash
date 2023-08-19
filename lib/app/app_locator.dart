import 'package:get_it/get_it.dart';
import 'package:opticash/core/core.dart';

/// Global [GetIt.instance].
final locator = GetIt.instance;

/// Set up [GetIt] locator.
Future<void> setUpLocator() async {
  const baseUrl = 'https://devapi.opticash.io/api/v1';

  locator.allowReassignment = true;
  locator.registerSingleton<AuthRepository>(
    AuthRepository(baseUrl: baseUrl),
  );
}

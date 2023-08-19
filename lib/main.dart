import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:opticash/app/app_bloc_observer.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/app/app_locator.dart';
import 'package:opticash/features/features.dart';
import 'package:opticash/gen/fonts.gen.dart';
import 'package:opticash/ui/ui.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      await setUpLocator();

      Bloc.observer = AppBlocObserver();
      runApp(MainApp());
    },
    (error, stackTrace) async {
      //await Sentry.captureException(error, stackTrace: stackTrace);
      //await FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}

class MainApp extends HookWidget {
  MainApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp.router(
      title: 'Opticash',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.rogerex,
        primaryColor: AppColors.green,
      ),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Unfocus(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (context) => AuthBloc(),
            ),
          ],
          child: ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 390, name: MOBILE),
              const Breakpoint(start: 391, end: 600, name: TABLET),
              const Breakpoint(start: 601, end: 800, name: DESKTOP),
            ],
          ),
        ),
      ),
    );
  }
}

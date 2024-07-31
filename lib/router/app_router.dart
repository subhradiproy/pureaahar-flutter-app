import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/authentication/presentation/screens/verification_screen.dart';
import 'routes/routes.dart';

part 'app_router.g.dart';

@riverpod
class AppRouter extends _$AppRouter {
  @override
  GoRouter build() {
    GoRouter? router;
    ref.onDispose(() => router?.dispose());
    return router ??= GoRouter(
      initialLocation: AppRoute.login.path,
      routes: <RouteBase>[
        GoRoute(
          name: AppRoute.splash.name,
          path: AppRoute.splash.path,
          builder: (_, GoRouterState state) => const Scaffold(),
        ),
        GoRoute(
          name: AppRoute.login.name,
          path: AppRoute.login.path,
          builder: (_, GoRouterState state) => const LoginScreen(),
          
          
        ),
        GoRoute(
              name: AppRoute.verification.name,
              path: AppRoute.verification.path,
              builder: (_, GoRouterState state) => VerificationScreen(
                contact: state.uri.queryParameters['contact'] ?? '',
              ),
            ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/app_startup/presentation/screens/splash_screen.dart';
import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/authentication/presentation/screens/verification_screen.dart';
import '../features/home/presentation/screens/explore_home_screen.dart';
import '../features/home/presentation/widgets/nested_scaffold_nav.dart';
import 'routes/routes.dart';

part 'generated/app_router.g.dart';

@riverpod
class AppRouter extends _$AppRouter {
  /// Root Navigator key
  final GlobalKey<NavigatorState> _root = GlobalKey<NavigatorState>();

  @override
  GoRouter build() {
    GoRouter? router;
    ref.onDispose(() => router?.dispose());
    return router ??= GoRouter(
      navigatorKey: _root,
      initialLocation: AppRoute.home.path,
      routes: <RouteBase>[
        GoRoute(
          name: AppRoute.splash.name,
          path: AppRoute.splash.path,
          builder: (_, GoRouterState state) => const SplashScreen(),
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
        StatefulShellRoute.indexedStack(
          builder: (_, GoRouterState state, StatefulNavigationShell child) =>
              NestedScaffoldNavBar(key: state.pageKey, child: child),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: <GoRoute>[
                GoRoute(
                  path: AppRoute.home.path,
                  name: AppRoute.home.name,
                  pageBuilder: (_, GoRouterState state) {
                    return NoTransitionPage<ExploreHomeScreen>(
                      key: state.pageKey,
                      child: ExploreHomeScreen(key: state.pageKey),
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <GoRoute>[
                GoRoute(
                  path: AppRoute.meals.path,
                  name: AppRoute.meals.name,
                  pageBuilder: (_, GoRouterState state) {
                    return NoTransitionPage<Widget>(
                      key: state.pageKey,
                      child: Scaffold(key: state.pageKey),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

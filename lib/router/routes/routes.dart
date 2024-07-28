/// Global Enum for all routes in the app
enum AppRoute {
  splash('/', 'SPLASH'),
  login('/login', 'AUTH_LOGIN'),
  otpVerification('/otp-verification', 'OTP_VERIFICATION'),
  pageNotFound('/404', 'PAGE_NOT_FOUND'),
  ;

  /// AppRoute Constructor
  const AppRoute(this.path, this.name);

  /// Generate AppRoute from the [] string
  factory AppRoute.fromLocation(String location) {
    return _cachedRoutes.putIfAbsent(
      location,
      () => AppRoute.values.singleWhere(
        (AppRoute route) => route.path == location,
        orElse: () => AppRoute.pageNotFound,
      ),
    );
  }

  /// Represents the route name
  final String name;

  /// Represents the route path
  final String path;

  @override
  String toString() => name;

  /// Local Variable to cache the routes
  static final Map<String, AppRoute> _cachedRoutes = <String, AppRoute>{};
}

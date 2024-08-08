/// Global Enum for all routes in the app
enum AppRoute {
  splash('/', 'SPLASH'),
  login('/auth/login', 'AUTH_LOGIN'),
  verification('/auth/verification', 'OTP_VERIFICATION'),
  pageNotFound('/404', 'PAGE_NOT_FOUND'),
  home('/app/explore', 'EXPLORE'),
  meals('/app/meals', 'MEALS'),
  productListing('/app/brands/:id', 'PRODUCT_LISTING'),
  brandProduct('/app/brandproduct', 'BRAND_PRODUCT_LISTING'),
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

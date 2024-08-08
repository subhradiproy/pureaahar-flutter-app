import 'package:firebase_core/firebase_core.dart';

import 'firebase/firebase_options_development.dart';

enum Flavor {
  dev('[DEV] Veg Verse'),
  prod('Veg Verse');

  const Flavor(this.title);

  final String title;

  FirebaseOptions get firebaseConfig {
    return switch (this) {
      Flavor.dev => DefaultFirebaseOptions.currentPlatform,
      _ => throw UnimplementedError(
          'FirebaseOptions for $this flavor is not implemented',
        ),
    };
  }

  /// API BASE URL
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://pureahrapigcp-prod.el.r.appspot.com',
  );
}

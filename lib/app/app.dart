import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/login_screen.dart';
import '../l10n/l10n.dart';
import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.use(Brightness.light),
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.use(Brightness.dark),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LoginScreen(),
    );
  }
}

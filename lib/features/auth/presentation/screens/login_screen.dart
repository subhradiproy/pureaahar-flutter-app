import 'package:flutter/material.dart';

import '../../../../shared/app_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close_rounded),
                ),
                Expanded(
                  child: AppText(
                    'Welcome to Veg Verse',
                    style: AppTextStyle.title1(),
                  ),
                ),
              ],
            ),
            _loginHeader(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: AppTextStyle.title1(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _loginHeader() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppText(
              'Verify your phone number with code',
              style: AppTextStyle.headline(),
            ),
            AppText(
              "We'll send you a code. It helps keep your account secure",
              style: AppTextStyle.label1(),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

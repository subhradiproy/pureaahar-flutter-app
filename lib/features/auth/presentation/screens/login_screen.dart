import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/app_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close_rounded),
        ),
        title: AppText(
          'Welcome to Veg Verse',
          style: AppTextStyle.title2.copyWith(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            Expanded(child: _loginContents()),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: AppTextStyle.title1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _loginContents() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(
            'Verify your phone number with code',
            style: AppTextStyle.headline.copyWith(fontSize: 28),
          ),
          const SizedBox(height: 8),
          AppText(
            "We'll send you a code. It helps keep your account secure",
            style: AppTextStyle.label2,
            maxLines: 2,
          ),
          const SizedBox(height: 30),
          AppText(
            'Your Phone Number',
            style: AppTextStyle.button,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Phone Number',
              prefixText: '+91',
              prefixStyle: AppTextStyle.body1.copyWith(color: Colors.black),
              prefixIconConstraints: const BoxConstraints(
                maxWidth: 40,
                maxHeight: 20,
              ),
              prefixIcon: SvgPicture.asset(
                'assets/india.svg',
              ),
              hintStyle: AppTextStyle.body1.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}

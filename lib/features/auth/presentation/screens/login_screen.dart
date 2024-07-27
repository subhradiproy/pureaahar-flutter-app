import 'package:flutter/material.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/phone_textfield/country_prefix.dart';
import '../../../../shared/widgets/phone_textfield/phone_text_field.dart';

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
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 4),
            child: AppText(
              'Your Phone Number',
              style: AppTextStyle.button,
            ),
          ),
          PhoneTextField(
            countryPrefixStyle: CountryPrefixStyle(
              textStyle: AppTextStyle.paragraph1.copyWith(),
            ),
            autofillHints: const <String>[AutofillHints.telephoneNumber],
          ),
          // Row(
          //   children: <Widget>[
          //     // Expanded(
          //     //   child: TextFormField(
          //     //     initialValue: '+91',
          //     //     ignorePointers: true,
          //     //     decoration: InputDecoration(
          //     //       prefix: ,

          //     //     ),
          //     //   ),
          //     // ),
          //     const SizedBox(width: 8),
          //     Expanded(
          //       flex: 3,
          //       child: TextField(
          //         decoration: InputDecoration(
          //           hintText: 'Phone Number',
          //           prefix: const Text('+91'),
          //           prefixIconConstraints: const BoxConstraints(
          //             maxWidth: 40,
          //             maxHeight: 20,
          //           ),
          //           prefixIcon: SvgPicture.asset('assets/india.svg'),
          //           prefixStyle:
          //               AppTextStyle.body1.copyWith(color: Colors.black),
          //           hintStyle: AppTextStyle.body1.copyWith(),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

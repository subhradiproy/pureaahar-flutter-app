import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/phone_textfield/country_prefix.dart';
import '../../../../shared/widgets/phone_textfield/phone_text_field.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({required this.controller, super.key});

  final PhoneController controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
            child: AppText('Your Phone Number', style: AppTextStyle.button),
          ),
          PhoneTextField(
            controller: controller,
            countryPrefixStyle: CountryPrefixStyle(
              textStyle: AppTextStyle.paragraph1.copyWith(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                const Expanded(
                  child: Divider(color: AppColors.gray1, thickness: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppText('OR', style: AppTextStyle.button),
                ),
                const Expanded(
                  child: Divider(color: AppColors.gray1, thickness: 1),
                ),
              ],
            ),
          ),

          // Sign in with Google
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.secondaryContainer,
                    foregroundColor: theme.colorScheme.primary,
                  ),
                  icon: SvgPicture.asset(
                    'assets/google.svg',
                    width: 24,
                    height: 24,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AppText(
                      'Sign in with Google',
                      style: AppTextStyle.label2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../app/constants/assets.dart';
import '../../../../router/routes/routes.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/phone_textfield/country_prefix.dart';
import '../../../../shared/widgets/phone_textfield/phone_text_field.dart';
import '../providers/login_notifier.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final PhoneController _controller;

  @override
  void initState() {
    _controller = PhoneController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<LoginState>>(
      loginNotifierProvider,
      (_, AsyncValue<LoginState> next) => next.whenOrNull(
        data: (LoginState state) {
          switch (state) {
            case LoginVerificationState(:final PhoneNumber number):
              context.pushNamed(
                AppRoute.verification.name,
                queryParameters: <String, String>{
                  'contact': number.international,
                },
              );
            default:
          }
        },
      ),
    );
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          'Welcome to Vegverse',
          style: AppTextStyle.title2.copyWith(color: AppColors.primary),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => context.goNamed(AppRoute.home.name),
            child: const AppText('Skip'),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          child: Column(
            children: <Widget>[
              Expanded(child: _content(theme)),
              Row(
                children: <Expanded>[
                  // const SizedBox.square(
                  //           dimension: 24,
                  //           child: CircularProgressIndicator.adaptive(
                  //             valueColor: AlwaysStoppedAnimation<Color>(
                  //               AppColors.white,
                  //             ),
                  //           ),
                  //         ),
                  Expanded(
                    child: ListenableBuilder(
                      listenable: _controller,
                      child: AppText('Send Code', style: AppTextStyle.title3),
                      builder: (_, Widget? child) {
                        final bool isButtonEnabled =
                            _controller.value.isValid();
                        return ElevatedButton(
                          onPressed: isButtonEnabled
                              ? () => ref
                                  .read(loginNotifierProvider.notifier)
                                  .sendOTP(_controller.value)
                              : null,
                          child: child,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// The content of the login screen.
  SingleChildScrollView _content(ThemeData theme) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(
            'Verify your phone number with code',
            style: AppTextStyle.headline.copyWith(fontSize: 24),
          ),
          const SizedBox(height: 8),
          AppText(
            "We'll send you a code. It helps keep your account secure",
            style: AppTextStyle.label2.copyWith(fontSize: 14),
            maxLines: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 4),
            child: AppText('Your Phone Number', style: AppTextStyle.button),
          ),
          PhoneTextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Phone number'),
            countryPrefixStyle: CountryPrefixStyle(
              textStyle: AppTextStyle.paragraph1.copyWith(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
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
          Row(
            children: <Expanded>[
              Expanded(
                child: ElevatedButton.icon(
                  onPressed:
                      ref.read(loginNotifierProvider.notifier).signInWithGoogle,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.surface,
                    foregroundColor: theme.colorScheme.onSurface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(
                        color: theme.colorScheme.onSurface,
                        width: 0.1,
                      ),
                    ),
                  ),
                  icon: SvgPicture.asset(
                    SvgAsset.googleIcon.path,
                    width: 24,
                    height: 24,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AppText(
                      'Continue with Google',
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

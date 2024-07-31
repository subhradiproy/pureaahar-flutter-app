import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late final TextEditingController _controller;

  /// Default Pin Theme
  final PinTheme defaultTheme = PinTheme(
    width: 56,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColors.gray1),
    ),
  );

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
        child: Column(
          children: <Widget>[
            Expanded(child: _content()),
            Row(
              children: <Expanded>[
                Expanded(
                  child: ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _controller,
                    builder: (_, TextEditingValue value, __) {
                      final bool isEnabled = value.text.length == 6;
                      return ElevatedButton(
                        onPressed: isEnabled ? () {} : null,
                        child: AppText('Done', style: AppTextStyle.title3),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// The content of the screen
  SingleChildScrollView _content() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText(
            'We just sent an SMS',
            style: AppTextStyle.headline.copyWith(fontSize: 28),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Expanded(
                child: AppText(
                  "Enter the 4-digit code we've sent to +1 234 567 890",
                  style: AppTextStyle.label2,
                  maxLines: 3,
                ),
              ),
              const SizedBox(width: 5),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primary,
                ),
                child: AppText(
                  'Edit',
                  style: AppTextStyle.title3.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Pinput(
              controller: _controller,
              autofocus: true,
              length: 6,
              animationDuration: const Duration(milliseconds: 200),
              textInputAction: TextInputAction.done,
              defaultPinTheme: defaultTheme,
              focusedPinTheme: defaultTheme.copyWith(
                decoration: defaultTheme.decoration?.copyWith(
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              pinAnimationType: PinAnimationType.fade,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: AppText.rich(
                  <InlineSpan>[
                    TextSpan(
                      text: "Didn't receive the code? ",
                      style: AppTextStyle.label2,
                    ),
                    // WidgetSpan(
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     style: TextButton.styleFrom(
                    //       foregroundColor: AppColors.primary,
                    //       padding: EdgeInsets.zero,
                    //     ),
                    //     child: AppText(
                    //       'Resend it',
                    //       style: AppTextStyle.title3.copyWith(fontSize: 14),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const Icon(Icons.lock_clock_rounded, color: AppColors.gray1),
              AppText(
                '30s',
                style: AppTextStyle.label2.copyWith(color: AppColors.gray1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

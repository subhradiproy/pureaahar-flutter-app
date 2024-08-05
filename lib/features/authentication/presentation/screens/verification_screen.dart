import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/utils/sms_retriever_api.dart';
import '../../../../shared/widgets/app_text.dart';
import '../providers/login_notifier.dart';

class VerificationScreen extends ConsumerStatefulWidget {
  const VerificationScreen({required this.contact, super.key});
  final String contact;

  @override
  ConsumerState<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends ConsumerState<VerificationScreen> {
  late final TextEditingController _controller;
  late ValueNotifier<Duration> _timer;
  late StreamSubscription<Duration> _subscription;
  final TapGestureRecognizer _tapRecognizer = TapGestureRecognizer();

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
    _timer = ValueNotifier<Duration>(const Duration(seconds: 30));
    _subscription = Stream<Duration>.periodic(
      const Duration(seconds: 1),
      (_) => _timer.value - const Duration(seconds: 1),
    )
        .takeWhile((Duration duration) => duration.inSeconds >= 0)
        .listen((Duration event) => _deductTime());
    super.initState();
  }

  /// Deducts the timer by 1 second
  void _deductTime() =>
      _timer.value = _timer.value - const Duration(seconds: 1);

  /// Assign a new StreamSubscription to the _subscription on resent
  void _onResent() {
    ref.read(loginNotifierProvider.notifier).resendOTP();
    _timer.value = const Duration(seconds: 30);
    _subscription.cancel();
    _subscription = Stream<Duration>.periodic(
      const Duration(seconds: 1),
      (_) => _timer.value - const Duration(seconds: 1),
    )
        .takeWhile((Duration value) => value.inSeconds >= 0)
        .listen((Duration event) => _deductTime());
  }

  @override
  void dispose() {
    _subscription.cancel();
    _controller.dispose();
    _timer.dispose();
    _tapRecognizer.dispose();
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppText(
                      'We just sent an SMS',
                      style: AppTextStyle.headline.copyWith(fontSize: 28),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: AppText(
                            '''Enter the 6-digit code we've sent to ${widget.contact.isEmpty ? 'your phone' : widget.contact}''',
                            style: AppTextStyle.label2.copyWith(fontSize: 14),
                            maxLines: 3,
                          ),
                        ),
                        const SizedBox(width: 5),
                        TextButton(
                          onPressed: () => context.pop(),
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
                        smsRetriever: AppSmsRetriever(SmartAuth()),
                        onClipboardFound: (String value) =>
                            _controller.text = value,
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
                    _resendCodeField(),
                  ],
                ),
              ),
            ),
            Row(
              children: <Expanded>[
                Expanded(
                  child: ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _controller,
                    builder: (_, TextEditingValue value, __) => ElevatedButton(
                      onPressed: value.text.length == 6
                          ? () => ref
                              .read(loginNotifierProvider.notifier)
                              .verifyOTP(_controller.text)
                          : null,
                      child: AppText('Done', style: AppTextStyle.title3),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Resend code row
  Row _resendCodeField() {
    return Row(
      children: <Widget>[
        Expanded(
          child: ValueListenableBuilder<Duration>(
            valueListenable: _timer,
            builder: (_, Duration val, Widget? child) => AppText.rich(
              <InlineSpan>[
                TextSpan(
                  text: "Didn't receive the code? ",
                  style: AppTextStyle.label2,
                ),
                if (val.inSeconds < 1)
                  TextSpan(
                    text: 'Resend it',
                    recognizer: _tapRecognizer..onTap = _onResent,
                    style: AppTextStyle.title3.copyWith(
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  )
                else
                  TextSpan(
                    text: 'Resend in ${val.inSeconds}s',
                    style: AppTextStyle.title3.copyWith(
                      fontSize: 14,
                      color: AppColors.gray1,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

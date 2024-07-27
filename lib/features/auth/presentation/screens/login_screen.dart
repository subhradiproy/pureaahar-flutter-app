import 'package:flutter/material.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/phone_textfield/phone_text_field.dart';
import '../widgets/login_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
        child: Column(
          children: <Widget>[
            Expanded(child: LoginContent(controller: _controller)),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListenableBuilder(
                    listenable: _controller,
                    child: AppText('Send Code', style: AppTextStyle.title3),
                    builder: (_, Widget? child) {
                      final bool isButtonEnabled = _controller.value.isValid();
                      return ElevatedButton(
                        onPressed: isButtonEnabled ? () {} : null,
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
    );
  }
}

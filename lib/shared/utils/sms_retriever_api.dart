import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';

class AppSmsRetriever implements SmsRetriever {
  const AppSmsRetriever(this.smartAuth);

  final SmartAuth smartAuth;

  @override
  Future<void> dispose() => smartAuth.removeSmsListener();

  @override
  Future<String?> getSmsCode() async {
    // final String? signature = await smartAuth.getAppSignature();
    final SmsCodeResult res =
        await smartAuth.getSmsCode(useUserConsentApi: true);
    if (res.succeed && res.codeFound) return res.code!;
    return null;
  }

  @override
  bool get listenForMultipleSms => false;
}

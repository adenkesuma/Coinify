import 'package:defi/view/auth/address.dart';
import 'package:defi/view/auth/all-done.dart';
import 'package:defi/view/auth/get-bitcoin.dart';
import 'package:defi/view/auth/id-type.dart';
import 'package:defi/view/auth/info-lesson.dart';
import 'package:defi/view/auth/order-submitted.dart';
import 'package:defi/view/auth/receive-bitcoin.dart';
import 'package:defi/view/auth/trade-amount.dart';
import 'package:defi/view/auth/upload-photo.dart';
import 'package:defi/view/auth/user-purpose.dart';
import 'package:defi/view/auth/verified.dart';
import 'package:defi/view/auth/verify-photo-id.dart';
import 'package:defi/view/security-alerts-settings.dart';
import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';
import 'package:defi/view/auth/authentication-code.dart';
import 'package:defi/view/auth/citizenship.dart';
import 'package:defi/view/auth/forgot-password.dart';
import 'package:defi/view/auth/privacy-policy.dart';
import 'package:defi/view/auth/personal-information.dart';
import 'package:defi/view/auth/secure-account.dart';
import 'package:defi/view/auth/sign-in-code.dart';
import 'package:defi/view/auth/sign-in.dart';
import 'package:defi/view/auth/sign-up.dart';
import 'package:defi/view/auth/two-step-verification.dart';
import 'package:defi/view/auth/verify-email.dart';
import 'package:defi/view/auth/verify-identity.dart';
import 'package:defi/view/welcome.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/verified',
      routes: {
        // '/':
        '/welcome': (context) => Welcome(),
        '/sign-up':(context) => SignUp(),
        '/sign-in': (context) => SignIn(),
        '/sign-in-code': (context) => SignInCode(),
        '/verify-email': (context) => VerifyEmail(),
        '/verify-identity': (context) => VerifyIdentity(),
        '/secure-account': (context) => SecureAccount(),
        '/two-step-verification':(context) => TwoStepVerification(),
        '/authentication-code': (context) => AuthenticationCode(),
        '/citizenship': (context) => Citizenship(),
        '/personal-information': (context) => PersonalInformation(),
        '/forgot-password': (context) => ForgotPassword(),
        '/privacy-policy': (context) => PrivacyPolicy(),
        '/verified' : (context) => Verified(),
        '/all-done' : (context) => AllDone(),
        '/address' : (context) => Address(),
        '/user-purpose' : (context) => UserPurpose(),
        '/id-type' : (context) => IdType(),
        '/trade-amount' : (context) => TradeAmount(),
        '/upload-photo' : (context) => UploadPhoto(),
        '/security-alerts-settings' : (context) => SecurityAlertsSettings(),
        '/verify-photo-id' : (context) => VerifyPhotoId(),
        '/order-submitted' : (context) => OrderSubmitted(),
        '/get-bitcoin' : (context) => GetBitcoin(),
        '/receive-bitcoin' : (context) => ReceiveBitcoin(),
        '/info-lesson': (context) => InfoLesson()
      },
      // home: Splash()
    );
  }
}

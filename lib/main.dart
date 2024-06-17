import 'package:defi/view/auth/address.dart';
import 'package:defi/view/auth/all-done.dart';
import 'package:defi/view/auth/card-info.dart';
import 'package:defi/view/auth/get-bitcoin.dart';
import 'package:defi/view/auth/id-type.dart';
import 'package:defi/view/auth/info-lesson.dart';
import 'package:defi/view/auth/order-submitted.dart';
import 'package:defi/view/auth/receive-bitcoin.dart';
import 'package:defi/view/auth/take-photo-of-your-bill.dart';
import 'package:defi/view/auth/trade-amount.dart';
import 'package:defi/view/auth/upload-photo.dart';
import 'package:defi/view/auth/user-purpose.dart';
import 'package:defi/view/auth/verified.dart';
import 'package:defi/view/auth/verify-photo-id.dart';
import 'package:defi/view/auth/verify-user-identity.dart';
import 'package:defi/view/home.dart';
import 'package:defi/view/security-alerts-settings.dart';
import 'package:intl/intl_standalone.dart'
    if (dart.library.html) 'package:intl/intl_browser.dart';
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
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/take-photo-of-your-bill',
      initialRoute: '/trade-amount',
      routes: {
        // '/':
        '/welcome': (context) => const Welcome(),
        '/sign-up': (context) => const SignUp(),
        '/sign-in': (context) => const SignIn(),
        '/sign-in-code': (context) => const SignInCode(),
        '/verify-email': (context) => const VerifyEmail(),
        '/verify-identity': (context) => const VerifyIdentity(),
        '/secure-account': (context) => const SecureAccount(),
        '/two-step-verification': (context) => const TwoStepVerification(),
        '/authentication-code': (context) => const AuthenticationCode(),
        '/citizenship': (context) => const Citizenship(),
        '/personal-information': (context) => const PersonalInformation(),
        '/forgot-password': (context) => ForgotPassword(),
        '/privacy-policy': (context) => const PrivacyPolicy(),
        '/verified': (context) => const Verified(),
        '/all-done': (context) => const AllDone(),
        // '/address' : (context) => Address(),
        '/user-purpose': (context) => const UserPurpose(),
        '/id-type': (context) => const IdType(),
        '/trade-amount': (context) => const TradeAmount(),
        '/upload-photo': (context) => const UploadPhoto(),
        '/security-alerts-settings': (context) => const SecurityAlertsSettings(),
        '/verify-photo-id': (context) => const VerifyPhotoId(),
        '/order-submitted': (context) => const OrderSubmitted(),
        '/get-bitcoin': (context) => const GetBitcoin(),
        '/receive-bitcoin': (context) => const ReceiveBitcoin(),
        '/info-lesson': (context) => const InfoLesson(),
        '/card-info': (context) => CardInfo(),
        '/verify-user-identity': (context) => const VerifyUserIdentity(),
        '/home': (context) => HomePage(),
        '/take-photo-of-your-bill': (context) => const CameraApp(),
      },
      // home: Splash()
    );
  }
}

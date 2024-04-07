import 'package:defi/view/auth/verified.dart';
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
      },
      // home: Splash()
    );
  }
}

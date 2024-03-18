import 'package:defi/view/auth/forgot-password.dart';
import 'package:defi/view/auth/sign-in-code.dart';
import 'package:defi/view/auth/sign-in.dart';
import 'package:defi/view/auth/sign-up.dart';
import 'package:defi/view/auth/verify-email.dart';
import 'package:defi/view/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      initialRoute: '/welcome',
      routes: {
        // '/': 
        '/welcome': (context) => Welcome(),
        '/sign-up':(context) => SignUp(),
        '/sign-in': (context) => SignIn(),
        '/sign-in-code': (context) => SignInCode(),
        '/verify-email':(context) => VerifyEmail(),
        '/forgot-password': (context) => ForgotPassword(),
      },

      // home: Splash()
    );
  }
}

import 'package:defi/view/auth/forgot-password.dart';
import 'package:defi/view/auth/sign-in.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/sign-in': (context) => SignIn(),
        '/forgot-password': (context) => ForgotPassword()
      },

      // home: Splash()
    );
  }
}

import 'package:flutter/material.dart';

import 'package:chatopia/pages/home_page.dart';
import 'package:chatopia/pages/login_page.dart';
import 'package:chatopia/pages/signup_page.dart';
import 'package:chatopia/pages/verify_page.dart';
import 'package:chatopia/pages/welcome_page.dart';
import 'package:chatopia/pages/forgot_page.dart';

import 'package:chatopia/utils/routes.dart';


void main() {
  runApp(const Chatopia());
}

class Chatopia extends StatelessWidget {
  const Chatopia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.welcomePage,
      routes: {
        MyRoutes.loginPage: (context) => const LoginPage(),
        MyRoutes.signupPage: (context) => const SignupPage(),
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.verifyPage: (context) => const VerifyPage(),
        MyRoutes.forgotPage: (context) => const ForgotPage(),
        MyRoutes.welcomePage: (context) => const WelcomePage(),
      },
    );
  }
}
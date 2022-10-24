import 'package:ewallet/ui/pages/auth/login_page.dart';
import 'package:ewallet/ui/pages/auth/onboarding_page.dart';
import 'package:ewallet/ui/pages/auth/register_page.dart';
import 'package:ewallet/ui/pages/auth/register_success_page.dart';
import 'package:ewallet/ui/pages/auth/register_upload_idcard_page.dart';
import 'package:ewallet/ui/pages/auth/register_upload_page.dart';
import 'package:ewallet/ui/pages/auth/splash_page.dart';
import 'package:ewallet/ui/pages/main/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //auth
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/register': (context) => const RegisterPage(),
        '/register-upload': (context) => const RegisterUploadPage(),
        '/register-upload-id': (context) => const RegisterUploadIdcardPage(),
        '/register-success': (context) => const RegisterSuccessPage(),
        //main
        '/home': (context) => const HomePage(),

      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_app/config/theme/app_theme.dart';
import 'package:login_app/presentation/screens/login/login_screen.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home:  LoginScreen(),
    );
  }
}













































































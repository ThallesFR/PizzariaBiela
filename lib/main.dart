import 'package:flutter/material.dart';
import 'package:pizzaria_biella/theme/app_theme.dart';
import 'package:pizzaria_biella/src/view/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const Login(),
      debugShowCheckedModeBanner: false,
    
    );
  }
}

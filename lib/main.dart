import 'package:business_dir/pages/home3.dart';
import 'package:business_dir/pages/splashscreen.dart';
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
        '/' : (context) => const SplashScreen(),
      '/home': (context) => Home()
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override 
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [ Image.asset('assets/icons/splash.jpg',
        fit: BoxFit.cover,),
        ]
      ),
    );
  }
}


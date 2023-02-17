// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'homepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

 @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/UKTI SPLASH.jpg",
      fit: BoxFit.fill,
    );
  }
}
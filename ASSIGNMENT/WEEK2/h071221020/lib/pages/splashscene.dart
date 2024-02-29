
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:h071221020/pages/homepage.dart';

class SplashScene extends StatefulWidget {
  const SplashScene({
    super.key,
  });

  @override
  State<SplashScene> createState() => _SplashSceneState();
}

class _SplashSceneState extends State<SplashScene> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1 ),
          child: Image.asset(
            "resources/images/logo.jpg",
            width: MediaQuery.of(context).size.width * 0.4,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}




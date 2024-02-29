import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:h071221020/const.dart';
import 'package:h071221020/pages/splashscene.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScene(),
    );
  }
}
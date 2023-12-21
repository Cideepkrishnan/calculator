import 'package:calculator/view/Home_screen/Home_screen.dart';
import 'package:calculator/view/Splash_screen/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splashScreen());
  }
}

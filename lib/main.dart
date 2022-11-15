import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/week_2/facebook_page.dart';
import 'package:flutter_playground/pages/week_1/home_page.dart';
import 'package:flutter_playground/pages/week_1/login.dart';
import 'package:flutter_playground/pages/week_1/money_control.dart';
import 'package:flutter_playground/pages/week_1/tinder.dart';
import 'package:flutter_playground/pages/week_3/animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/moneyControl': (context) => const MoneyControl(),
        '/tinder': (context) => const Tinder(),
        '/login': (context) => const Login(),
        '/facebook': (context) => const FacebookPage(),
        '/animation': (context) => const AnimationPage(),
      },
    );
  }
}

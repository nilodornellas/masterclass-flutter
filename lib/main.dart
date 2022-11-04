import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home_page.dart';
import 'package:flutter_playground/pages/login.dart';
import 'package:flutter_playground/pages/money_control.dart';
import 'package:flutter_playground/pages/tinder.dart';

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
      },
    );
  }
}

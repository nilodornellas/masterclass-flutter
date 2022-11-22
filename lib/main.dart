import 'package:flutter/material.dart';
import 'package:flutter_playground/animations/animation_shape/control_animation_shape.dart';
import 'package:flutter_playground/animations/animation_tile/control_scroll_view.dart';
import 'package:flutter_playground/responsividade/facebook_page.dart';
import 'package:flutter_playground/home_page.dart';
import 'package:flutter_playground/layouts_copy/login.dart';
import 'package:flutter_playground/layouts_copy/money_control.dart';
import 'package:flutter_playground/layouts_copy/tinder.dart';
import 'package:flutter_playground/animations/animation_shape/animation_shape.dart';
import 'package:flutter_playground/animations/animation_tile/scroll_view.dart';

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
        '/controlAnimation': (context) => const ControlAnimationPage(),
        '/animationTile': (context) => const AnimationTile(),
        '/controlAnimationTile': (context) => const ControlScrollTile(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/money_control.dart';
import 'package:flutter_playground/pages/tinder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final gradientTidner = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(240, 248, 104, 75),
      Color.fromARGB(255, 241, 95, 119),
      Color.fromARGB(253, 241, 95, 119),
      Color.fromARGB(255, 246, 70, 100),
    ],
  );

  final gradientLogin = const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xff594FCC),
      Color(0xff398CBF),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            _cardPage(
              'Money Control',
              '/moneyControl',
              context,
              color: const Color(0xFF5e5bdc),
            ),
            _cardPage(
              'Tinder',
              '/tinder',
              context,
              gradient: gradientTidner,
            ),
            _cardPage(
              'Blue Login',
              '/login',
              context,
              gradient: gradientLogin,
            ),
            _cardPage(
              'Facebook',
              '/facebook',
              context,
              color: Colors.blue[800],
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardPage(String title, String route, context,
      {Gradient? gradient, Color? color}) {
    return Card(
      color: color,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(4),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () => Navigator.of(context).pushNamed(route),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_playground/money_control.dart';
import 'package:flutter_playground/tinder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final LinearGradient gradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(240, 248, 104, 75),
      Color.fromARGB(255, 241, 95, 119),
      Color.fromARGB(253, 241, 95, 119),
      Color.fromARGB(255, 246, 70, 100),
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
            Card(
              color: const Color(0xFF5e5bdc),
              elevation: 5,
              child: ListTile(
                title: const Text(
                  'Money Control',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MoneyControl()),
                ),
              ),
            ),
            Card(
              child: Container(
                decoration: BoxDecoration(
                    gradient: gradient, borderRadius: BorderRadius.circular(4)),
                child: ListTile(
                  title: const Text(
                    'Tinder',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Tinder()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

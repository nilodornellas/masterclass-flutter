import 'package:flutter/material.dart';

class Shape {
  final double height;
  final double width;
  final double borderRadius;
  final Color color;

  Shape({
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.color,
  });
}

class Rectangle extends Shape {
  Rectangle({
    required super.height,
    required super.width,
    required super.borderRadius,
    required super.color,
  });
}

class Circle extends Shape {
  Circle({
    required double size,
    required super.color,
  }) : super(
          height: size,
          width: size,
          borderRadius: size / 2,
        );
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  final duration = const Duration(seconds: 1);
  bool isAnimated = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedAlign(
          curve: Curves.easeInOut,
          duration: const Duration(seconds: 1),
          alignment: isAnimated ? Alignment.bottomRight : Alignment.topCenter,
          child: ShapeWidget(
            shape: isAnimated
                ? Circle(
                    size: 100,
                    color: Colors.purple,
                  )
                : Rectangle(
                    height: 100,
                    width: 100,
                    borderRadius: 0,
                    color: Colors.orange,
                  ),
            onTap: () async {
              setState(() {
                isAnimated = !isAnimated;
              });
            },
          ),
        ),
      ),
    );
  }
}

class ShapeWidget extends StatelessWidget {
  final Shape shape;
  final void Function() onTap;
  const ShapeWidget({super.key, required this.shape, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(microseconds: 600),
        height: shape.height,
        width: shape.width,
        decoration: BoxDecoration(
          color: shape.color,
          borderRadius: BorderRadius.circular(
            shape.borderRadius,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ControlAnimationPage extends StatefulWidget {
  const ControlAnimationPage({Key? key}) : super(key: key);

  @override
  State<ControlAnimationPage> createState() => _ControlAnimationPageState();
}

class _ControlAnimationPageState extends State<ControlAnimationPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late final Animation<double> sizeAnimation;
  late final Animation<double> borderAnimation;
  late final Animation<Color?> colorAnimation;
  late final Animation<Alignment> aligmentAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    controller.addListener(() {
      setState(() {});
    });

    sizeAnimation = Tween<double>(begin: 70, end: 200).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 1.0),
      ),
    );
    borderAnimation = Tween<double>(begin: 50, end: 0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 1.0),
      ),
    );
    colorAnimation =
        ColorTween(begin: Colors.orange, end: Colors.green).animate(controller);
    aligmentAnimation =
        AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: GestureDetector(
        onTap: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        child: Align(
          alignment: aligmentAnimation.value,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: sizeAnimation.value,
              decoration: BoxDecoration(
                color: colorAnimation.value,
                borderRadius: BorderRadius.circular(borderAnimation.value),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

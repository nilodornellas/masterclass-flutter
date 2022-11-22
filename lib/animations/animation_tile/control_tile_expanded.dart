import 'package:flutter/material.dart';
import 'package:flutter_playground/animations/animation_tile/custom_tile.dart';

class ControlListTileExpanded extends StatefulWidget {
  final CustomTile tile;
  const ControlListTileExpanded({Key? key, required this.tile})
      : super(key: key);

  @override
  State<ControlListTileExpanded> createState() =>
      _ControlListTileExpandedState();
}

class _ControlListTileExpandedState extends State<ControlListTileExpanded>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late final Animation<double> rotationAnimation;
  late final Animation<double?> heightFactorAnimation;
  late final Animation<Color?> colorAnimation;
  late final Animation<Alignment> aligmentAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    controller.addListener(() {
      setState(() {});
    });

    rotationAnimation = Tween<double>(begin: 0, end: 0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 1.0),
      ),
    );
    heightFactorAnimation = Tween<double?>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 1.0),
      ),
    );
    colorAnimation =
        ColorTween(begin: Colors.black, end: Colors.blue).animate(controller);
    aligmentAnimation =
        AlignmentTween(begin: Alignment.bottomCenter, end: Alignment.topCenter)
            .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.tile.title,
            style: const TextStyle(fontSize: 20),
          ),
          trailing: AnimatedRotation(
            turns: rotationAnimation.value,
            duration: const Duration(milliseconds: 300),
            child: IconButton(
              onPressed: () {
                if (controller.isCompleted) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              },
              icon: widget.tile.icon,
              iconSize: 30,
            ),
          ),
          iconColor: colorAnimation.value,
          textColor: colorAnimation.value,
        ),
        ClipRect(
          child: Align(
            heightFactor: heightFactorAnimation.value,
            alignment: aligmentAnimation.value,
            child: widget.tile.content,
          ),
        )
      ],
    );
  }
}

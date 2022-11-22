import 'package:flutter/material.dart';
import 'package:flutter_playground/animations/animation_tile/custom_tile.dart';

class ListTileExpanded extends StatelessWidget {
  final CustomTile tile;
  const ListTileExpanded({Key? key, required this.tile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            tile.title,
            style: const TextStyle(fontSize: 20),
          ),
          trailing: AnimatedRotation(
            turns: tile.isExpanded ? .5 : 0,
            duration: const Duration(milliseconds: 200),
            child: IconButton(
              onPressed: tile.onTap,
              icon: tile.icon,
              iconSize: 30,
            ),
          ),
          iconColor: tile.colorIcon,
          textColor: tile.colorTitle,
        ),
        ClipRect(
          child: AnimatedAlign(
            heightFactor: tile.isExpanded ? 1 : 0,
            alignment:
                tile.isExpanded ? Alignment.topCenter : Alignment.bottomCenter,
            duration: const Duration(milliseconds: 200),
            child: tile.content,
          ),
        )
      ],
    );
  }
}

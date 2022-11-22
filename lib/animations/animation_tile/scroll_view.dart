import 'package:flutter/material.dart';
import 'package:flutter_playground/animations/animation_tile/custom_tile.dart';
import 'package:flutter_playground/animations/animation_tile/list_tile_expanded.dart';

class AnimationTile extends StatefulWidget {
  const AnimationTile({Key? key}) : super(key: key);

  @override
  State<AnimationTile> createState() => _AnimationTileState();
}

class _AnimationTileState extends State<AnimationTile> {
  int? indexSelected;
  bool teste = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyScrollView'),
        ),
        body: ListView(
          children: List.generate(
            25,
            (index) => ListTileExpanded(
              tile: CustomTileAnimate(
                title: 'My expansion tile $index',
                content: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      FlutterLogo(size: 85),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        textAlign: TextAlign.justify,
                      ),
                      Divider(),
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    indexSelected = index;
                    teste = !teste;
                  });
                },
                isExpanded: indexSelected == index ? teste : false,
              ),
            ),
          ),
        ));
  }
}

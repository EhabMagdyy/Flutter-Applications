import 'package:flutter/material.dart';
import 'package:toku/models/items.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: must_be_immutable
class SubpageItems extends StatelessWidget {
  const SubpageItems({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
          child: Row(
            children: [
              Container(
                color: item.backgroundImageColor,
                child: Image.asset(
                  item.image,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15.0)),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 5.0),
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.jpName,
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      item.enName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 60.0)),
              IconButton(
                onPressed: () async {
                  // don't write assets/ in the path (he already knows)
                  await AudioPlayer().play(AssetSource(item.audio));
                },
                icon: const Icon(Icons.play_circle, size: 30.0)
              ),
            ],
          ),
        ),
        Divider(
          height: 0.0,
          color: item.divColor,
        ),
      ],
    );
  }
}


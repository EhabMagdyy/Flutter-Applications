import 'package:flutter/material.dart';
import 'package:toku/components/subpage_items.dart';
import 'package:toku/models/items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> colorItems = const [
    Item(image: "assets/images/colors/color_black.png", jpName: "Burakku", enName: "Black", audio: "sounds/colors/black.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)),
    Item(image: "assets/images/colors/color_brown.png", jpName: "Chairo", enName: "Brown", audio: "sounds/colors/brown.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)),
    Item(image: "assets/images/colors/color_red.png", jpName: "Aka", enName: "Red", audio: "sounds/colors/red.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)),
    Item(image: "assets/images/colors/color_green.png", jpName: "Midori", enName: "Green", audio: "sounds/colors/green.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)),
    Item(image: "assets/images/colors/color_white.png", jpName: "Shiro", enName: "White", audio: "sounds/colors/white.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)),
    Item(image: "assets/images/colors/color_gray.png", jpName: "Gurē", enName: "Gray", audio: "sounds/colors/gray.wav",
         divColor: Color.fromRGBO(40, 53, 147, 1), backgroundImageColor: Color.fromRGBO(159, 168, 218, 1)), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.blue.shade800,
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          for(var number in colorItems)
            SubpageItems(item: number),
        ],
      ),
    );
  }
}
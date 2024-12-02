import 'package:flutter/material.dart';
import 'package:toku/components/subpage_items.dart';
import 'package:toku/models/items.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item> numbersItems = const [
    Item(image: "assets/images/numbers/number_one.png", jpName: "ichi", enName: "one", audio: "sounds/numbers/number_one_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_two.png", jpName: "ni", enName: "two", audio: "sounds/numbers/number_two_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_three.png", jpName: "san", enName: "three", audio: "sounds/numbers/number_three_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_four.png", jpName: "shi", enName: "four", audio: "sounds/numbers/number_four_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_five.png", jpName: "go", enName: "five", audio: "sounds/numbers/number_five_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_six.png", jpName: "roku", enName: "six", audio: "sounds/numbers/number_six_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_seven.png", jpName: "sebun", enName: "seven", audio: "sounds/numbers/number_seven_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_eight.png", jpName: "hachi", enName: "eight", audio: "sounds/numbers/number_eight_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_nine.png", jpName: "kyuu", enName: "nine", audio: "sounds/numbers/number_nine_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
    Item(image: "assets/images/numbers/number_ten.png", jpName: "juu", enName: "ten", audio: "sounds/numbers/number_ten_sound.mp3",
         divColor: Color.fromRGBO(251, 140, 0, 1), backgroundImageColor: Color.fromRGBO(255, 204, 128, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.orange.shade600,
        title: const Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          for(var number in numbersItems)
            SubpageItems(item: number),
        ],
      ),
    );
  }
}
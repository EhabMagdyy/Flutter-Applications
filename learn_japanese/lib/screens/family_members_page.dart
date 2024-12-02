import 'package:flutter/material.dart';
import 'package:toku/components/subpage_items.dart';
import 'package:toku/models/items.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> familyMemberItems = const [
    Item(image: "assets/images/family_members/family_father.png", jpName: "Chichi", enName: "father", audio: "sounds/family_members/father.wav",
         divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_mother.png", jpName: "Haha", enName: "mother", audio: "sounds/family_members/mother.wav",
         divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_older_brother.png", jpName: "Onīsan", enName: "older brother", audio: "sounds/family_members/older_brother.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_older_sister.png", jpName: "Ane", enName: "older sister", audio: "sounds/family_members/older_sister.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_younger_brother.png", jpName: "Otouto", enName: "younger brother", audio: "sounds/family_members/younger_brother.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_younger_sister.png", jpName: "Imouto", enName: "younger sister", audio: "sounds/family_members/younger_sister.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_grandfather.png", jpName: "Ojīsan", enName: "grandfather", audio: "sounds/family_members/grandfather.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_grandmother.png", jpName: "Sobo", enName: "grandmother", audio: "sounds/family_members/grandmother.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_son.png", jpName: "Musuko", enName: "son", audio: "sounds/family_members/son.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
    Item(image: "assets/images/family_members/family_daughter.png", jpName: "Musume", enName: "daughter", audio: "sounds/family_members/daughter.wav",
          divColor: Color.fromRGBO(67, 160, 71, 1), backgroundImageColor:  Color.fromRGBO(165, 214, 167, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.green,
        title: const Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          for(var member in familyMemberItems)
            SubpageItems(item: member),
        ],
      ),
    );
  }
}
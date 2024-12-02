import 'package:flutter/material.dart';

class Item
{
  final String image;
  final String jpName;
  final String enName;
  final String audio;
  final Color? divColor;
  final Color? backgroundImageColor;

  const Item({required this.image, required this.jpName, required this.enName,
              required this.audio, required this.divColor,
              required this.backgroundImageColor});
}
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItems extends StatelessWidget {
  HomeItems({super.key, required this.text, required this.color, required this.onTap});

  String text;
  Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.0,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    );
  }
}
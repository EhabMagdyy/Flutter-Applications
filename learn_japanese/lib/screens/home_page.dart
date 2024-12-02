import 'package:flutter/material.dart';
import 'package:toku/components/homepage_items.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          HomeItems(
            text: "Numbers",
            color: Colors.orange,
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NumbersPage()),
              );
            },
          ),
          HomeItems(
            text: "Family Members", 
            color: Colors.green,
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FamilyMembersPage()),
              );
            },
          ),
          HomeItems(
            text: "Colors",
            color: Colors.indigo.shade800,
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ColorsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
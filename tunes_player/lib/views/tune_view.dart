import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import 'package:tunes_player/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color.fromARGB(255, 255, 17, 0), sound: 'note1.wav'),
    TuneModel(color: Color.fromARGB(255, 255, 174, 0), sound: 'note2.wav'),
    TuneModel(color: Color.fromARGB(255, 255, 238, 0), sound: 'note3.wav'),
    TuneModel(color: Color.fromARGB(255, 98, 210, 0), sound: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 0, 171, 108), sound: 'note5.wav'),
    TuneModel(color: Color.fromARGB(255, 0, 174, 255), sound: 'note6.wav'),
    TuneModel(color: Color.fromARGB(255, 15, 0, 177), sound: 'note7.wav'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tunes Player",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 244, 232),
            fontSize: 24,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff253238),
        elevation: 0,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e),).toList(),
      ),
    );
  }
}
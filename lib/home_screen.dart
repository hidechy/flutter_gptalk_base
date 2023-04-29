// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  FlutterTts flutterTts = FlutterTts();

  final textEditingController = TextEditingController();

  ///
  @override
  Widget build(BuildContext context) {
    textEditingController.text = 'ひでちー天才';

    return Scaffold(
      body: SafeArea(
        child: IconButton(
          onPressed: () => _speak(),
          icon: const Icon(Icons.ac_unit_rounded),
        ),
      ),
    );
  }

  ///
  Future _speak() async {
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setPitch(1);
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.speak(textEditingController.text);
  }
}

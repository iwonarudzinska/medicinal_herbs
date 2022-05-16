import 'package:flutter/material.dart';

class FlashCardsPage extends StatelessWidget {
  const FlashCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Flashcard Screen'),
        ],
      ),
    );
  }
}
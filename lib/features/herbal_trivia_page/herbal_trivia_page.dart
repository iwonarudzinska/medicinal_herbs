import 'package:flutter/material.dart';

class HerbalTriviaPage extends StatelessWidget {
  const HerbalTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            Text('hello'),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

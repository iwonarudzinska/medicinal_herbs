import 'package:flutter/material.dart';

class HerbsPage extends StatelessWidget {
  const HerbsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('MEDICINAL HERBS!'),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () => FirebaseAuth.instance.signOut(),
        //     icon: const Icon(
        //       Icons.logout,
        //       color: Colors.lime,
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Herbs Screen'),
        ],
      ),
    );
  }
}

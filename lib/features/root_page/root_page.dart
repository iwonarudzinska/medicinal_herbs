import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicinal_herbs/features/home_page/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEDICINAL HERBS!'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text('Welcome to the application about Medicinal Herbs'),
            const SizedBox(height: 100),
            Text(
              'This app will help you learn medicinal herbs.\n\nYou can add herbs to your library, play flashcards, and take a quiz.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Flashcards will teach you the Latin names of herbs.\n\nIn the quiz you will test your knowledge of the properties of herbs.\n\nIn the herbal library you will be able to add photos and descriptions of the herbs of your choice.'),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text("Lets'go"),
            ),
          ],
        ),
      ),
    );
  }
}

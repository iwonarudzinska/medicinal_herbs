import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
              'This app will help you learn medicinal herbs.\n\nYou can add herbs to your library, play flashcards, and take a quiz',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  var index = 3;
  final screens = [
    const FlashCardPage(),
    const QuizPage(),
    const AddPage(),
    const HerbsPage(),
  ];
  final items = [
    const Icon(Icons.dashboard, size: 30),
    const Icon(Icons.quiz, size: 30),
    const Icon(Icons.add, size: 30),
    const Icon(Icons.menu_book, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      backgroundColor: Colors.red,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 214, 236, 15)),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.green,
          buttonBackgroundColor: Colors.purple,
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 400),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('MEDICINAL HERBS!'),
    //     centerTitle: true,
    //     actions: [
    //       IconButton(
    //         onPressed: () => FirebaseAuth.instance.signOut(),
    //         icon: const Icon(Icons.logout),
    //       ),
    //     ],
    //   ),
    //   body: Center(
    //     child: Column(
    //       children: const [
    //         SizedBox(height: 50),
    //         Text('Welcome to the application about Medicinal Herbs'),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class FlashCardPage extends StatelessWidget {
  const FlashCardPage({Key? key}) : super(key: key);

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

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Quiz Screen'),
        ],
      ),
    );
  }
}

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Add Screen'),
        ],
      ),
    );
  }
}

class HerbsPage extends StatelessWidget {
  const HerbsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Herbs Screen'),
        ],
      ),
    );
  }
}

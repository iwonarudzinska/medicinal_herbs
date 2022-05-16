import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medicinal_herbs/features/add_page/add_page.dart';
import 'package:medicinal_herbs/features/flashcards_page/flashcards_page.dart';
import 'package:medicinal_herbs/features/herbs_page/herbs_page.dart';
import 'package:medicinal_herbs/features/quiz_page/quiz_page.dart';

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
    const FlashCardsPage(),
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
  }
}
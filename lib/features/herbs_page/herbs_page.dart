import 'package:flutter/material.dart';

class HerbsPage extends StatelessWidget {
  const HerbsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 120, 28, 28),
                Color.fromARGB(255, 19, 100, 104),
                Color.fromARGB(255, 26, 118, 29),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        title: const Text('MEDICINAL HERBS'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 120, 28, 28),
                  Color.fromARGB(255, 19, 100, 104),
                  Color.fromARGB(255, 26, 118, 29),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://ktomalek.pl/blog/zdjecie/melisa-jak-dziala.jpg',
                ),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.teal,
                width: 3,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 120, 28, 28),
                  offset: Offset(6, 6),
                  blurRadius: 6,
                ),
              ],
            ),
            margin: const EdgeInsets.all(20),
            child: const Padding(
              padding: EdgeInsets.all(70),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.teal,
              border: Border.all(
                color: const Color.fromARGB(255, 120, 28, 28),
                width: 3,
              ),
            ),
            child: const Text(
              'Melisa lekarska',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 119, 205, 195),
                  offset: Offset(6, 6),
                  blurRadius: 6,
                ),
              ],
            ),
            child: const Expanded(
              child: Text(
                'Notatka',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

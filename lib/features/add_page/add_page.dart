import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var name = '';
  var image = '';
  var description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://envato-shoebox-0.imgix.net/4966/9876-0dcc-4f36-ad5d-6e73c58ceb42/DSC_8556.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=1600&s=1c80a0b9cf5d8d8918133439b38d550f=',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 140,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 30, 176, 59),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Paste the link to the photos',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            image = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 20, 136, 43),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Give the name of the herb',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            name = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 14, 94, 30),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Give a description of the herb',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            description = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FirebaseFirestore.instance.collection('herbs').add({
                          'image': image,
                          'name': name,
                          'description': description,
                        });
                      },
                      child: const Text('ADD'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

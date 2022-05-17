import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_herbs/features/herbs_page/cubit/herbs_cubit.dart';
import 'package:medicinal_herbs/features/home_page/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => HerbsCubit(),
        child: BlocBuilder<HerbsCubit, HerbsState>(
          builder: (context, state) {
            return Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.farmersalmanac.com/wp-content/uploads/2010/10/herbs-table_as460759168.jpeg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black45,
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.amber,
                            child: IconButton(
                              onPressed: () {
                                context.read<HerbsCubit>().signOut();
                              },
                              // } FirebaseAuth.instance.signOut(),
                              icon: const Icon(
                                Icons.logout,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Welcome to the application about Medicinal Herbs',
                        style: GoogleFonts.macondo(
                          color: Colors.amber,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        '👉This app will help you learn medicinal herbs.\n\n👉You can add herbs to your library, play flashcards, and take a quiz.',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        '✅Flashcards will teach you the Latin names of herbs.\n\n✅In the quiz you will test your knowledge of the properties of herbs.\n\n✅In the herbal library you will be able to add photos and descriptions of the herbs of your choice.',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const HomePage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Let's go",
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

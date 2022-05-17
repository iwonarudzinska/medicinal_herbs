import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicinal_herbs/features/herbs_page/cubit/herbs_cubit.dart';

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
      body: BlocProvider(
        create: (context) => HerbsCubit()..start(),
        child: BlocBuilder<HerbsCubit, HerbsState>(
          builder: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              return Center(
                child: Text('Something went wrong: ${state.errorMessage}'),
              );
            }

            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            final documents = state.documents;
            return ListView(
              children: [
                for (final document in documents) ...[
                  Dismissible(
                    key: ValueKey(document.id),
                    onDismissed: (_) {
                      context.read<HerbsCubit>().delete(document: document);
                      // FirebaseFirestore.instance
                      //     .collection('herbs')
                      //     .doc(document.id)
                      //     .delete();
                    },
                    // background: const DecoratedBox(
                    //   decoration: BoxDecoration(
                    //     color: Colors.red,
                    //   ),
                    //   // child: Align(
                    //   //   alignment: Alignment.centerRight,
                    //   //   child: Padding(
                    //   //     padding: EdgeInsets.only(right: 32.0),
                    //   //     child: Icon(Icons.delete),
                    //   //   ),
                    //   // ),
                    // ),
                    child: Container(
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
                        image: DecorationImage(
                          image: NetworkImage(
                            document['image'],
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
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal,
                      border: Border.all(
                        color: const Color.fromARGB(255, 120, 28, 28),
                        width: 2,
                      ),
                    ),
                    child: Text(
                      document['name'],
                      style: const TextStyle(
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
                    child: Expanded(
                      child: Text(
                        document['description'],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    color: Color.fromARGB(255, 222, 96, 96),
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

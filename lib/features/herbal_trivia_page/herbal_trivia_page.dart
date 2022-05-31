import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicinal_herbs/app/core/enums.dart';
import 'package:medicinal_herbs/app/injection_container.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';

class HerbalTriviaPage extends StatelessWidget {
  const HerbalTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HerbalTriviaCubit>(
        create: (context) {
          return getIt()..start();
        },
        child: BlocBuilder<HerbalTriviaCubit, HerbalTriviaState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Status.success:
                return Container(
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
                      for (final trivia in state.results)
                        _HerbalTriviaItemWidget(model: trivia),
                    ],
                  ),
                );
              case Status.error:
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Unknown error',
                    style: TextStyle(color: Theme.of(context).errorColor),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class _HerbalTriviaItemWidget extends StatelessWidget {
  const _HerbalTriviaItemWidget({Key? key, required this.model})
      : super(key: key);

  final HerbalTriviaModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.teal,
            offset: Offset(6, 6),
            blurRadius: 6,
          ),
        ],
      ),
      child: Expanded(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              model.contents,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              model.answer,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

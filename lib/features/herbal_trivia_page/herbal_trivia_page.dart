import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicinal_herbs/app/core/enums.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/cubit/herbal_trivia_cubit.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/data_sources/herbal_trivia_data_source.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/model/herbal_trivia_model.dart';
import 'package:medicinal_herbs/features/herbal_trivia_page/repositories/herbal_trivia_repository.dart';

class HerbalTriviaPage extends StatelessWidget {
  const HerbalTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HerbalTriviaCubit>(
        create: (context) {
          return HerbalTriviaCubit(
            herbalTriviaRepository: HerbalTriviaRepository(
              remoteDataSource: HerbalTriviaMockedDataSource(),
            ),
          )..start();
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
                return ListView(
                  children: [
                    for (final trivia in state.results)
                      _HerbalTriviaItemWidget(model: trivia),
                  ],
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
            color: Color.fromARGB(255, 23, 213, 169),
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
            Container(
              color: Colors.amber,
              child: Text(
                model.answer,
                style: const TextStyle(
                  color: Color.fromARGB(255, 23, 213, 169),
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

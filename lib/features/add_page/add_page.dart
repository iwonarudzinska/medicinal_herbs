import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medicinal_herbs/data/remote_data_sources/items_remote_data_source.dart';
import 'package:medicinal_herbs/features/herbs_page/cubit/herbs_cubit.dart';
import 'package:medicinal_herbs/features/home_page/home_page.dart';
import 'package:medicinal_herbs/domain/repositories/items_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddPage extends StatefulWidget {
  const AddPage({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  final Function onSave;

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var name = '';
  var image = '';
  var description = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HerbsCubit(
        ItemsRepository(
          ItemsRemoteDataSource(),
        ),
      ),
      child: BlocBuilder<HerbsCubit, HerbsState>(
        builder: (context, state) {
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
                              decoration: InputDecoration(
                                hintText:
                                    AppLocalizations.of(context)!.link_photo,
                                border: const OutlineInputBorder(),
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
                              decoration: InputDecoration(
                                hintText: AppLocalizations.of(context)!.name,
                                border: const OutlineInputBorder(),
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
                              decoration: InputDecoration(
                                hintText: AppLocalizations.of(context)!.content,
                                border: const OutlineInputBorder(),
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
                            onPressed: name.isEmpty || description.isEmpty
                                ? null
                                : () {
                                    context.read<HerbsCubit>().add(
                                          image: image,
                                          name: name,
                                          description: description,
                                        );
                                    widget.onSave();
                                  },
                            child: Text(
                              AppLocalizations.of(context)!.add,
                            ),
                          ),
                          const SizedBox(
                            height: 90,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(
                                    MaterialPageRoute(
                                      builder: (_) => const HomePage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.back,
                                  style: const TextStyle(
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

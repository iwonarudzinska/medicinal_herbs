import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicinal_herbs/domain/remote_data_sources/items_remote_data_source.dart';
import 'package:medicinal_herbs/features/herbs_page/cubit/herbs_cubit.dart';
import 'package:medicinal_herbs/features/home_page/home_page.dart';
import 'package:medicinal_herbs/domain/repositories/items_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => HerbsCubit(ItemsRepository(
          ItemsRemoteDataSource(),
        )),
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
                  child: ListView(
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
                              icon: const Icon(
                                Icons.logout,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        AppLocalizations.of(context)!.welcome,
                        style: GoogleFonts.macondo(
                          color: Colors.amber,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppLocalizations.of(context)!.about_app,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        AppLocalizations.of(context)!.description,
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
                        child: Text(
                          AppLocalizations.of(context)!.start,
                          style: const TextStyle(
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

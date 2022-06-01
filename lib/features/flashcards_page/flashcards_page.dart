import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:medicinal_herbs/features/flashcards_page/grid_elements/alfalfa_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/basil_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/chamomile_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/coriander_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/dill_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/fenugreek_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/lavender_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/mint_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/nettle_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/oregano_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/rosemary_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/sage_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/thyme_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/valerian_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/yerbamate_grid_element.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const FlashCardsPage());
}

class FlashCardsPage extends StatefulWidget {
  const FlashCardsPage({Key? key}) : super(key: key);

  @override
  State<FlashCardsPage> createState() => _FlashCardsPageState();
}

class _FlashCardsPageState extends State<FlashCardsPage> {
  double borderWidth = 10;
  Color borderColor = Colors.amber;

  void _changeGridBorder() {
    setState(() {
      borderWidth = 5;
      borderColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
      borderWidth = math.Random().nextInt(5).toDouble() + 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicinal Herbs',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: borderColor.withOpacity(0.5),
        body: Center(
          child: ListView(
            children: [
              Container(
                color: borderColor,
                child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: EdgeInsets.all(borderWidth),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: <Widget>[
                    ChamomileGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.chamomile,
                      afterTap: 'Matricaria chamomilla',
                    ),
                    CorianderGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.coriander,
                      afterTap: 'Coriandrum sativum',
                    ),
                    LavenderGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.lavender,
                      afterTap: 'Lavandula',
                    ),
                    AlfalfaGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.alfalfa,
                      afterTap: 'Medicago sativa',
                    ),
                    BasilGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.basil,
                      afterTap: 'Ocimum',
                    ),
                    OreganoGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.oregano,
                      afterTap: 'Origanum vulgare',
                    ),
                    DillGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.dill,
                      afterTap: 'Anethum',
                    ),
                    FenugreekGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.fenugreek,
                      afterTap: 'Trigonella',
                    ),
                    MintGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.mint,
                      afterTap: 'Mentha',
                    ),
                    NettleGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.nettle,
                      afterTap: 'Urtica',
                    ),
                    RosemaryGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.rosemary,
                      afterTap: 'Rosmarinus',
                    ),
                    SageGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.sage,
                      afterTap: 'Salvia',
                    ),
                    ThymeGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.thyme,
                      afterTap: 'Thymus vulgaris',
                    ),
                    ValerianGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.valerian,
                      afterTap: 'Valeriana officinalis',
                    ),
                    YerbamateGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: AppLocalizations.of(context)!.yerba_mate,
                      afterTap: 'Ilex paraguariensis',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

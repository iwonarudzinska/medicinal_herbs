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
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/rosemary_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/sage_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/thyme_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/valerian_grid_element.dart';
import 'package:medicinal_herbs/features/flashcards_page/grid_elements/yerbamate_grid_element.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
                      beforeTap: 'Chamomile',
                      afterTap: 'Matricaria chamomilla',
                    ),
                    CorianderGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Coriander',
                      afterTap: 'Coriandrum sativum',
                    ),
                    LavenderGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Lavender',
                      afterTap: 'Lavandula',
                    ),
                    AlfalfaGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Alfalfa',
                      afterTap: 'Medicago sativa',
                    ),
                    BasilGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Basil',
                      afterTap: 'Ocimum',
                    ),
                    CorianderGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Coriander',
                      afterTap: 'Coriandrum',
                    ),
                    DillGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Dill',
                      afterTap: 'Anethum',
                    ),
                    FenugreekGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Fenugreek',
                      afterTap: 'Trigonella',
                    ),
                    MintGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Mint',
                      afterTap: 'Mentha',
                    ),
                    NettleGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Nettle',
                      afterTap: 'Urtica',
                    ),
                    RosemaryGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Rosemary',
                      afterTap: 'Rosmarinus',
                    ),
                    SageGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Sage',
                      afterTap: 'Salvia',
                    ),
                    ThymeGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Thyme',
                      afterTap: 'Thymus vulgaris',
                    ),
                    ValerianGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Valerian',
                      afterTap: 'Valeriana officinalis',
                    ),
                    YerbamateGridElement(
                      onTap: _changeGridBorder,
                      beforeTap: 'Yerba Mate',
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



// import 'package:flutter/material.dart';

// class FlashCardsPage extends StatelessWidget {
//   const FlashCardsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: const [
//           Text('Flashcard Screen'),
//         ],
//       ),
//     );
//   }
// }
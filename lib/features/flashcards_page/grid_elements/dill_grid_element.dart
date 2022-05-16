import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DillGridElement extends StatefulWidget {
  const DillGridElement({
    Key? key,
    required this.onTap,
    required this.beforeTap,
    required this.afterTap,
  }) : super(key: key);
  final void Function() onTap;
  final String beforeTap;
  final String afterTap;

  @override
  State<DillGridElement> createState() => _DillGridElementState();
}

class _DillGridElementState extends State<DillGridElement> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        widget.onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            isTapped ? widget.afterTap : widget.beforeTap,
            style: isTapped
                ? GoogleFonts.lato(
                    fontSize: 18,
                  )
                : GoogleFonts.italianno(
                    fontSize: 50,
                    color: Colors.white,
                  ),
          ),
        ),
        color: Colors.teal.withOpacity(0.5),
      ),
    );
  }
}
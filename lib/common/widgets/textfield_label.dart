import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldLabel extends StatelessWidget {
  final String label;
  const TextfieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        label,
        style: GoogleFonts.aBeeZee(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

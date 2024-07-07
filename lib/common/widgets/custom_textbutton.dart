import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextbutton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomTextbutton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

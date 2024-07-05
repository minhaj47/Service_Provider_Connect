import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeItem extends StatelessWidget {
  final IconData icon;
  final String typeName;
  const TypeItem({
    super.key,
    required this.typeName,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 95,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            typeName,
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

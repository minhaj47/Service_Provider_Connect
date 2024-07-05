import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_provider_connect/features/login/screen/login_screen.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(9, 14.6, 13, 14.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Service Provider Connect',
            style: GoogleFonts.bangers(
                color: Theme.of(context).primaryColor, fontSize: 25),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text('Services')),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: const Text('Login')),
              TextButton(onPressed: () {}, child: const Text('Sign Up')),
              const SizedBox(width: 5),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Become a Service Provider'),
              )
            ],
          )
        ],
      ),
    );
  }
}

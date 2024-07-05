import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_provider_connect/common/widgets/centered_view.dart';
import 'package:service_provider_connect/constants/global_variables.dart';
import 'package:service_provider_connect/features/home/widgets/top_app_bar.dart';
import 'package:service_provider_connect/features/home/widgets/type_item.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CenteredView(child: const TopAppBar()),
      ),
      body: CenteredView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Text(
                'Get a Reliable Sevice\n Anytime',
                style: GoogleFonts.tenorSans(fontSize: 50),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 50,
              width: 600,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Container(
                    width: 60,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context)
                          .primaryColor, // Custom border color when focused
                    ),
                    borderRadius:
                        BorderRadius.circular(50.0), // Rounded corners
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          Theme.of(context).primaryColor, // Custom border color
                    ),
                    borderRadius:
                        BorderRadius.circular(50.0), // Rounded corners
                  ),
                  hintText:
                      'Write the description of your need', // Placeholder text
                  hintStyle: const TextStyle(
                      color: Colors.grey), // Placeholder text color
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0), // Horizontal padding
                ),
              ),
            ),
            const SizedBox(height: 80),
            Text(
              'What type of Services do you need?',
              style: GoogleFonts.aboreto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < types.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TypeItem(
                      typeName: types[i]['typeName'] as String,
                      icon: types[i]['icon'] as IconData,
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

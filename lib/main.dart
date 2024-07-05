import 'package:flutter/material.dart';
import 'package:service_provider_connect/features/home/screen/home_screen.dart';
import 'package:service_provider_connect/router.dart';
import 'material-theme/lib/util.dart';
import 'material-theme/lib/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Alike", "Abyssinica SIL");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const HomeScreen(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}

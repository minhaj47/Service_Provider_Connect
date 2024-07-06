import 'package:flutter/material.dart';
import 'package:service_provider_connect/features/home/screen/home_screen.dart';
import 'package:service_provider_connect/features/login/screen/login_screen.dart';
import 'package:service_provider_connect/features/signup/provider_signup.dart';
import 'package:service_provider_connect/features/signup/signup_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginScreen(),
      );

    case SignUpScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignUpScreen(),
      );

    case ProviderSignup.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProviderSignup(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(child: Text('404 not Found!')),
        ),
      );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_provider_connect/common/widgets/centered_view.dart';
import 'package:service_provider_connect/common/widgets/custom_filled_button.dart';
import 'package:service_provider_connect/common/widgets/custom_textbutton.dart';
import 'package:service_provider_connect/common/widgets/custom_textfield.dart';
import 'package:service_provider_connect/common/widgets/input_box.dart';
import 'package:service_provider_connect/common/widgets/password_textfield.dart';
import 'package:service_provider_connect/common/widgets/textfield_label.dart';
import 'package:service_provider_connect/features/authentication/screen/login_screen.dart';
import 'package:service_provider_connect/features/authentication/screen/provider_signup.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisible = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void signUp() {
    log(_confirmPasswordController.text);
    log(_nameController.text);
    log(_emailController.text);
    log(_passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                // alignment: Alignment.center,
                height: 400,
                width: 400,
                child: Image(
                  image: AssetImage('../../../../assets/images/login.jpg'),
                ),
              ),
              InputBox(
                width: 450,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Service Provider Connect',
                        style: GoogleFonts.bangers(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30),
                      ),
                      const SizedBox(height: 30),
                      const TextfieldLabel(
                        label: 'Enter your name :',
                      ),
                      const SizedBox(height: 8),
                      CustomTextfield(
                        hintText: 'Name',
                        controller: _nameController,
                      ),
                      const SizedBox(height: 16),
                      const TextfieldLabel(
                        label: 'Enter your email address :',
                      ),
                      const SizedBox(height: 8),
                      CustomTextfield(
                        hintText: 'Email Address',
                        controller: _emailController,
                      ),
                      const SizedBox(height: 16),
                      const TextfieldLabel(
                        label: 'Enter a password :',
                      ),
                      const SizedBox(height: 8),
                      PasswordTextfield(
                        hintText: 'Password',
                        controller: _passwordController,
                      ),
                      const SizedBox(height: 10),
                      const TextfieldLabel(
                        label: 'Confirm password :',
                      ),
                      const SizedBox(height: 8),
                      PasswordTextfield(
                        hintText: 'Confirm Password',
                        controller: _confirmPasswordController,
                      ),
                      const SizedBox(height: 10),
                      CustomTextbutton(
                        text: ' Want to be a service Provider ?',
                        onTap: () {
                          Navigator.pushNamed(
                              context, ProviderSignup.routeName);
                        },
                      ),
                      const SizedBox(height: 15),
                      CustomFilledButton(
                        label: 'Sign Up',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            signUp();
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already registered ?',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          CustomTextbutton(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                LoginScreen.routeName,
                              );
                            },
                            text: 'Login',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

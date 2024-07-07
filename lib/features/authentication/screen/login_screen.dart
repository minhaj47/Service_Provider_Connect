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
import 'package:service_provider_connect/features/authentication/screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void userLogin() {
    log(_emailController.text);
    log(_passwordController.text);
  }

  void providerLogin() {}

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
                      CustomTextbutton(
                        text: ' Forgot Password ?',
                        onTap: () {},
                      ),
                      const SizedBox(height: 15),
                      CustomFilledButton(
                        label: 'Login as User',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            userLogin();
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      CustomFilledButton(
                        label: 'Log In as Service Provider',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            providerLogin();
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account ?',
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          CustomTextbutton(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                SignUpScreen.routeName,
                              );
                            },
                            text: 'Sign Up',
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

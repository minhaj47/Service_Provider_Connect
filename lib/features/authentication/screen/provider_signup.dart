import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_provider_connect/common/widgets/centered_view.dart';
import 'package:service_provider_connect/common/widgets/custom_textfield.dart';
import 'package:service_provider_connect/common/widgets/input_box.dart';
import 'package:service_provider_connect/common/widgets/password_textfield.dart';
import 'package:service_provider_connect/common/widgets/textfield_label.dart';
import 'package:service_provider_connect/features/authentication/screen/login_screen.dart';

class ProviderSignup extends StatefulWidget {
  static const routeName = '/provider-sign-up';
  const ProviderSignup({super.key});

  @override
  State<ProviderSignup> createState() => _ProviderSignupState();
}

class _ProviderSignupState extends State<ProviderSignup> {
  bool isVisible = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void providerSignUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Center(
          child: Column(
            children: [
              InputBox(
                width: 950,
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
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
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
                              ],
                            ),
                          ),
                          const SizedBox(width: 40),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
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
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 35),
                      FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            providerSignUp();
                          }
                        },
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        child: const Text('Sign Up'),
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
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
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

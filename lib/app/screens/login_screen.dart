import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bebasaja/app/screens/main_screen.dart';
import 'package:bebasaja/app/screens/register_screen.dart';
import 'package:bebasaja/app/stores/login_store.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final LoginStore loginStore = LoginStore();

  void _handleSubmitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final userId = loginStore.userId;
      final password = loginStore.password;

      // Handle login logic here
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(content: Text('Logging in with User ID: $userId Password: $password')),
      // );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: GoogleFonts.nunito(
                  fontSize: 52,
                ),
              ),

              const SizedBox(height: 20.0),

              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            onChanged: (value) {
                              loginStore.setUserId(value);
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username or email',
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            onChanged: (value) {
                              loginStore.setPassword(value);
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _handleSubmitForm(context);
                          },
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20.0),

                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: 'Register',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                );
                              },
                            // Add gesture recognizer or onTap handler as needed
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

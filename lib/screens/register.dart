import 'package:flutter/material.dart';
import 'package:thisismeapp/components/my_button.dart';
import 'package:thisismeapp/components/textfield.dart';
import 'package:thisismeapp/screens/auth/auth_service.dart';

class Register extends StatelessWidget {
  Register({super.key, required this.onTap});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void Function()? onTap;
  void register() {
    final _auth = AuthService();
    _auth.signUpWithEmailPassword(
        emailController.text, passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.person,
                size: 100,
              ),
              const SizedBox(height: 50),
              Text(
                'Glad You\'ve Decided To Join Us',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: confirmpasswordController,
                hintText: ' Confirm Password',
                obscureText: true,
              ),
              MyButton(
                onTap: register,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

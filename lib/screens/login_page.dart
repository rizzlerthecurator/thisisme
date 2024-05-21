  import 'package:flutter/material.dart';
  import 'package:thisismeapp/components/my_button.dart';
  import 'package:thisismeapp/components/textfield.dart';

  import '../services/auth/auth_service.dart';

  // ignore: must_be_immutable
  class LoginPage extends StatelessWidget {
    LoginPage({super.key, required this.onTap});

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void Function()? onTap;

    void login(BuildContext context) async {
      final authService = AuthService();
      try {
        await authService.signInWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
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
                 Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.orange.shade800,
                ),
                const SizedBox(height: 50),
                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              
                const SizedBox(height: 10),
                
                const SizedBox(height: 25),
                MyButton(
                  onTap: () => login(context),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        'Register now',
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

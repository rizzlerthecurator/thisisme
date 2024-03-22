import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thisismeapp/screens/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(hintText: 'Enter your email'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration:
                        InputDecoration(hintText: 'Enter Your password'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => HomePage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.pink,
                    child: const Text('Login'),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Hello ',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Do you have an account?',),
                        TextSpan(text: ' Register',),
                        
                      ],
                    ),
                    
                    
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

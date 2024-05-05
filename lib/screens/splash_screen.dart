  import 'dart:async';

  import 'package:flutter/material.dart';
  import 'package:thisismeapp/screens/auth/auth_gate.dart';


  class SplashScreen extends StatefulWidget {
    const SplashScreen({super.key});

    @override
    State<SplashScreen> createState() => _SplashScreenState();
  }

  class _SplashScreenState extends State<SplashScreen> {
    get fit => null;

    @override
    void initState() {
      super.initState();
      Timer(const Duration(seconds: 8), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: ((context) =>  const AuthGate())));
      });
    }
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 122, 116, 116),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                "assets/images/sunset.jpg",
                fit: BoxFit.fill, // Ensures the image fills the whole space
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
  }

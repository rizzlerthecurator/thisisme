import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thisismeapp/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: ((context) => Login())));
    });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor:  const Color.fromARGB(255, 122, 116, 116),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Image.asset("assets/images/sun.jpg"),
        const SizedBox(height: 20,),
        const CircularProgressIndicator()],
      ),
    ),
  );
}
}



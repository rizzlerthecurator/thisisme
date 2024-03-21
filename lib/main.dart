import 'package:flutter/material.dart';
import 'package:thisismeapp/screens/home_page.dart';
import 'package:thisismeapp/screens/login.dart';
import 'package:thisismeapp/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This Is Me',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Register(),
    );
  }
}

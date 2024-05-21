import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Get To Know Us!',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
                "Our Story One out of every five children, teens, and adults in America has a diagnosable mental illness in any given year. And the lives of those who love them are also affected by their mental health challenge. This means that a mental health challenge touches approximately 50% of the American population.A serious gap exists between someone receiving medical treatment for mental illness and them learning how to live well in spite of it.  This gap is critical. So we become the bridge, the guide from the point of diagnosis to living well.   Research shows that finding a way to live a hope-filled life can be best caught, not taught, by peers who have “been there” and are now living well.  Research also shows that the best antidote for hopelessness is a hope that is rooted in faith.We provide those who are hopeless a safe place to process their pain and experience faith-filled hope modeled, shared, and given in support groups, classes, coaching, and resources that are led and written by peers who are living well in spite of their mental health challenge. This serves as a bridge between someone’s diagnosis and living well in spite of their diagnosis.  Our approach is based on seven mental health recovery principles and 25 years of clinical research on hope. And it works")
                
          ],
        ),
      ),
    );
  }
}

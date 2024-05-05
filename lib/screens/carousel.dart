  import 'package:flutter/material.dart';

  class Carousel extends StatefulWidget {
    const Carousel({super.key});

    @override
    State<Carousel> createState() => _CarouselState();
  }

  class _CarouselState extends State<Carousel> {
    @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
      );
    }
  }

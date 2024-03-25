import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
            Text('Item 4'),
            Text('Item 5'),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'This Is Me',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of column",
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(hintText: 'I am a child of a column'),
            ),
          )
        ],
      ),
    );
  }
}

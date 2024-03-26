import 'package:flutter/material.dart';
import 'package:thisismeapp/screens/airplay.dart';
import 'package:thisismeapp/screens/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 100,
                child: const ListTile(
                  leading: Icon(Icons.person_2),
                  title: Text("Kathy"),
                  subtitle: Text("My account"),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text("Home"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Home(),
                    ),
                  )
                },
              ),
              ListTile(
                leading: Icon(Icons.family_restroom),
                title: Text("Friends"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Friends(),
                    ),
                  )
                },
              ),
              ListTile(
                leading: Icon(Icons.report_problem),
                title: Text("Report A Problem"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Friends(),
                    ),
                  )
                },
              ),
               ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Contact Us'),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Friends(),
                    ),
                  )
                },
              )
            ],
          ),
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

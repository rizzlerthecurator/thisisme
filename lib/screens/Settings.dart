import 'package:flutter/material.dart';
import 'package:thisismeapp/screens/home_page.dart';
import 'package:thisismeapp/screens/language.dart';
import 'package:thisismeapp/screens/mode.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
    body: Container(
      padding: const EdgeInsets.all(10),
      child: ListView(children: [
        ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Language"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Language(),
                    ),
                  )
                },
              ),
              ListTile(
                leading: const Icon(Icons.mode),
                title: const Text("Theme"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Mode(),
                    ),
                  )
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () => {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(),
                    ),
                  )
                },
              ),
      ],),
    ),);
  }
}

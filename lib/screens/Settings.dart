import 'package:flutter/material.dart';

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
      child: ListView(children: const [
        Row(
          children: [
            Icon(Icons.language),
            Text('Language')
          ],
        )
      ],),
    ),);
  }
}

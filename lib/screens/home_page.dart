  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';
  import 'package:thisismeapp/screens/Aboutus.dart';
  import 'package:thisismeapp/screens/Contactus.dart';
  import 'package:thisismeapp/screens/Friends.dart';
  import 'package:thisismeapp/screens/Report.dart';
  import 'package:thisismeapp/screens/Settings.dart';
  import 'package:thisismeapp/screens/Share.dart';
  import 'package:thisismeapp/screens/auth/auth_service.dart';

  class HomePage extends StatelessWidget {
    const HomePage({super.key});
    void logout() {
      final _auth = AuthService();
      _auth.signOut();
    }

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
                  const Divider(
                    thickness: 5,
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
                  ListTile(
                    leading: const Icon(Icons.family_restroom),
                    title: const Text("Friends"),
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
                    leading: const Icon(Icons.report_problem),
                    title: const Text("Report A Problem"),
                    onTap: () => {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Report(),
                        ),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_page),
                    title: const Text('Contact Us'),
                    onTap: () => {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Contactus(),
                        ),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('About Us'),
                    onTap: () => {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Aboutus(),
                        ),
                      )
                    },
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Divider(
                    thickness: 5,
                  ),
                  ListTile(
                    leading: IconButton(
                        onPressed: logout, icon: const Icon(Icons.logout)),
                    title: const Text('Logout'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () => {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Settings(),
                        ),
                      )
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text("Share"),
                    onTap: () => {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Share(),
                        ),
                      )
                    },
                  ),
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
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
              child: Container(
            height: 700,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage('assets/images/sunset.jpg'),
                  fit: BoxFit.fill),
            ),
            child: Container(
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
            ),
          )));
    }
  }

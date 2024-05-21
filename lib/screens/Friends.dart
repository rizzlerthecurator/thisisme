import 'package:flutter/material.dart';
import 'package:thisismeapp/screens/chat_page.dart';
import 'package:thisismeapp/screens/user_tile.dart';
import 'package:thisismeapp/services/auth/auth_service.dart';
import 'package:thisismeapp/services/chat/chat_services.dart';

class Friends extends StatefulWidget {
  Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
        elevation: 0.0,
      ),
      body: _buildUserList(),
    );
  }

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        }
        return ListView(
          children: snapshot.data!
              .map<Widget>(
                (userData) => _buildUserListItem(userData, context),
              )
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData['email'] != _authService.getCurrentUser()) {
      return UserTile(
          text: userData['email'],
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatPage(receiverEmail: userData['email'], receiverID: userData["uid"],),
                ));
          });
    } else {
      return Container();
    }
  }
}

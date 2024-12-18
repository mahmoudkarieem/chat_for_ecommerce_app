import 'package:flutter/material.dart';

class ChatSettingsView extends StatelessWidget {
  const ChatSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd8d6d6) ,
      appBar: AppBar(
        backgroundColor: const Color(0xffd8d6d6),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildSettingsItem(
            context,
            'Chats',
            Icons.chat_bubble_outline,
                () {},
          ),
          _buildSettingsItem(
            context,
            'Message Requests',
            Icons.mark_email_unread_outlined,
                () {},
          ),
          _buildSettingsItem(
            context,
            'Marketplace',
            Icons.store_outlined,
                () {},
          ),
          _buildSettingsItem(
            context,
            'Archive',
            Icons.archive_outlined,
                () {},
          ),
          _buildSettingsItem(
            context,
            'Promo',
            Icons.local_offer_outlined,
                () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(
      BuildContext context,
      String title,
      IconData icon,
      VoidCallback onTap,
      ) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
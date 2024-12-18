import 'package:flutter/material.dart';

import '../models/ChatMessage.dart';
import '../preview_fake_data/PreviewFakeDate.dart';
import '../widgets/Chat_List_Item.dart';
import 'chat_sitting_view.dart';
import 'chat_view.dart';

class ChatListView extends StatefulWidget {
  ChatListView({Key? key}) : super(key: key);

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  List<ChatMessage> _filteredChats = [];

  void _navigateToChatView(BuildContext context, ChatMessage chat) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatViewScreen(chat: chat),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd8d6d6),
      appBar: AppBar(
        backgroundColor: const Color(0xffd8d6d6),
        elevation: 0,
        title: const Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatSettingsView()),
            );
          },
        ),
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          indent: 70,
        ),
        itemBuilder: (context, index) => ChatListItem(
          chat: chats[index],
          onTap: () => _navigateToChatView(context, chats[index]),
        ),
      ),
    );
  }
}

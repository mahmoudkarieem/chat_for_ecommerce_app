import 'package:flutter/material.dart';

import '../models/ChatMessage.dart';

class ChatListItem extends StatelessWidget {
  final ChatMessage chat;
  final VoidCallback onTap;

  const ChatListItem({Key? key, required this.chat, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(chat.avatarUrl),
      ),
      title: Text(
        chat.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      subtitle: Row(
        children: [
          if (chat.messageType == 'photo')
            const Icon(Icons.photo, size: 16, color: Colors.grey)
          else if (chat.messageType == 'video')
            const Icon(Icons.videocam, size: 16, color: Colors.grey),
          const SizedBox(width: 4),
          Text(
            chat.lastMessage,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      trailing: Text(
        chat.date,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
      onTap: onTap,
    );
  }
}

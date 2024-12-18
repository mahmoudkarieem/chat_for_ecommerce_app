
class ChatMessage {
  final String name;
  final String lastMessage;
  final String date;
  final String avatarUrl;
  final String messageType;

  ChatMessage({
    required this.name,
    required this.lastMessage,
    required this.date,
    required this.avatarUrl,
    required this.messageType,
  });
}
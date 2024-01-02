import 'package:flutter/material.dart';
import '/info.dart';
import '/widgets/my_message.dart';
import '/widgets/send_message_card.dart';

class ChatList extends StatelessWidget {
   const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            date: messages[index]['time'],
            message: messages[index]['text'].toString(),
          );
        }
        return SenderMessageCard(
            message: messages[index]['text'].toString(),
             date: messages[index]['time'],
          );
      },
      itemCount: messages.length,
    );
  }
}

import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import '../screens/individual_chat_screen.dart';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;

  const CustomCard({required this.chatModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualChatScreen(
              chatModel: chatModel,
            ),
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(
            chatModel.isGroup ? Icons.groups : Icons.person,
            color: Colors.grey,
            size: 35,
          ),
          radius: 25,
        ),
        title: Text(
          chatModel.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Row(
          children: [
            const Icon(
              Icons.done_all,
              size: 16,
            ),
            const SizedBox(width: 5),
            Text(
              chatModel.currentMessage,
            ),
          ],
        ),
        trailing: Text(
          chatModel.time,
        ),
      ),
    );
  }
}

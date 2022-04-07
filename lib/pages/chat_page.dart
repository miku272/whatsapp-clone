import 'package:flutter/material.dart';

import '../Custom UI/custom_card.dart';

import '../models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: 'For Testing',
      time: '11:00 AM',
      currentMessage: 'me: Just testing',
      isGroup: true,
    ),
    ChatModel(
      name: 'Someone Random',
      time: '07:26 AM',
      currentMessage: 'Hey! Good morning!',
      isGroup: false,
    ),
    ChatModel(
      name: '+91 84684 36871',
      time: 'yesterday',
      currentMessage: 'ohh wow really!?',
      isGroup: false,
    ),
    ChatModel(
      name: 'Natasha',
      time: '06/04/2022',
      currentMessage: 'okay then, see you later.',
      isGroup: false,
    ),
    ChatModel(
      name: 'Flutter GC',
      time: '05/04/2022',
      currentMessage: 'James: okay guys',
      isGroup: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

import '../models/chat_model.dart';

class IndividualChatScreen extends StatefulWidget {
  final ChatModel chatModel;

  const IndividualChatScreen({required this.chatModel, Key? key})
      : super(key: key);

  @override
  State<IndividualChatScreen> createState() => _IndividualChatScreenState();
}

class _IndividualChatScreenState extends State<IndividualChatScreen> {
  Widget selectEmoji() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back),
              CircleAvatar(
                child: widget.chatModel.isGroup
                    ? const Icon(
                        Icons.groups,
                        color: Colors.blueGrey,
                      )
                    : const Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                      ),
                radius: 20,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: const TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Last seen at 11:05 AM',
                  style: TextStyle(
                    fontSize: 12.3,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text('View Contact'),
                  value: 'View Contact',
                ),
                const PopupMenuItem(
                  child: Text('Media, links, and docs'),
                  value: 'Media, links, and docs',
                ),
                const PopupMenuItem(
                  child: Text('Search'),
                  value: 'Search',
                ),
                const PopupMenuItem(
                  child: Text('Mute Notifications'),
                  value: 'Mute Notifications',
                ),
                const PopupMenuItem(
                  child: Text('Wallpaper'),
                  value: 'Wallpaper',
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('More'),
                      Icon(
                        Icons.play_arrow_rounded,
                        size: 15,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  value: 'More',
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 45,
                    child: Card(
                      margin: const EdgeInsets.only(bottom: 8, right: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message',
                          contentPadding: const EdgeInsets.all(5),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.emoji_emotions),
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.attach_file),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChatModel {
  String name;
  String time;
  String currentMessage;
  bool isGroup;

  ChatModel({
    required this.name,
    required this.time,
    required this.currentMessage,
    required this.isGroup,
  });
}

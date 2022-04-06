import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF128C7E),
        ),
        fontFamily: 'Open Sans',
      ),
      title: 'Whatsapp clone',
      home: const HomeScreen(),
    );
  }
}

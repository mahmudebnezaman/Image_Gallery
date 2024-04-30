import 'package:examweektwo/views/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2CAB00),
          primary: const Color(0xFF2CAB00),
        ),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const HomeScreen(appBarTitle: 'Photo Gallery'),
    );
  }
}

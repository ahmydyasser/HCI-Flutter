import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';

void main() {
  runApp(const MultimediaApp());
}

class MultimediaApp extends StatelessWidget {
  const MultimediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HCI Multimedia Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: const Color(0xFF0F0F1E),
      ),
      home: const HomeScreen(),
    );
  }
}

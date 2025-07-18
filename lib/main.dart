import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news/core/constants/text_theme.dart';
import 'package:news/views/home_view.dart';

void main() async{
   await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: newsTextTheme),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

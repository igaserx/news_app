import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/constants/text_theme.dart';
import 'package:news/view_model/cubit/news_cubit.dart';
import 'package:news/views/home_view.dart';

void main() {
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

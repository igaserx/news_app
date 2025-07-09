import 'package:flutter/material.dart';
import 'package:news/core/constants/app_colors.dart';
import 'package:news/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: CustomAppBar(title: "NEWS",),
      body: const Placeholder()
    );
  }
}

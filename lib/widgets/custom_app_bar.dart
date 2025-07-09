import 'package:flutter/material.dart';
import 'package:news/core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  final String title;

  const CustomAppBar({
    super.key,
    this.color = AppColors.kBackground,
    required this.title,
  });

  @override
  build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.kText,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Newsreader',
              color: AppColors.kBackground,
            ),
          ),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

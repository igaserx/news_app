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
      leading: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CircleAvatar(
              radius: 25, 
          backgroundImage: NetworkImage(
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/4144/live/d7e8f9c0-5cae-11f0-ae37-a7df7603ca40.jpg.webp",
          ),
        ),
      ),
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 3),
        decoration: BoxDecoration(
          color: AppColors.kText,
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(8, 8),
            bottomRight: Radius.elliptical(8, 8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 3),
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
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(Icons.search_rounded),
        ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

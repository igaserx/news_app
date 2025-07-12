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
            "https://imgs.search.brave.com/YOrO8KcPasGpie-Ay0OK0aq9I9WRJAQXGYoV8f8nKuU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS12ZWN0/b3IvcGVyc29uLXdp/dGgtYmx1ZS1zaGly/dC10aGF0LXNheXMt/bmFtZS1wZXJzb25f/MTAyOTk0OC03MDQw/LmpwZz9zZW10PWFp/c19oeWJyaWQmdz03/NDA",
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

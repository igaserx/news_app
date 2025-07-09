import 'package:flutter/material.dart';
import 'package:news/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  final Color color ;
  final String title ;

  const CustomAppBar({
    super.key,  this.color = kWhite, required this.title,
  });

  @override
   build(BuildContext context) {
    return AppBar(
      backgroundColor:color,
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
          color : kBlack,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16) , bottomRight: Radius.circular(16))
        ),
        child: Text(title, style: TextStyle(color : kWhite))),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);
}

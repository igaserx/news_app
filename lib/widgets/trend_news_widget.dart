import 'package:flutter/material.dart';
import 'package:news/core/constants/responsive_size.dart';

class TrendNewsWidget extends StatelessWidget {
  const TrendNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height:ResponsiveSize.isTablet(context) ?  ResponsiveSize.getResponsiveHeight(context,0.3) : ResponsiveSize.getResponsiveHeight(context,0.2),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: ResponsiveSize.isTablet(context) ?  ResponsiveSize.getResponsiveWidth(context,0.4) : ResponsiveSize.getResponsiveWidth(context,0.6),
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    
                    "https://ichef.bbci.co.uk/news/800/cpsprodpb/4144/live/d7e8f9c0-5cae-11f0-ae37-a7df7603ca40.jpg.webp",
                  
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),

                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.2),
                      Colors.black.withValues(alpha: 0.8),
                    ],
                  ),
                ),

                child: Column(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 10,
                      ),
                      child: Text(
                        'Ukraine suffers heaviest attack as Trump criticises Putin',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

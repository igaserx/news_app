import 'package:flutter/material.dart';

class NewsByCategoryWidget extends StatelessWidget {
  const NewsByCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Orcas are bringing humans gifts of food – but why?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "One of the orcas, a juvenile female, “approached a camera I had in the water to film her younger brother and then opened her mouth and let out a dead seabird,” Towers, the executive director of Bay Cetology, a Canadian team of marine biologists based in Alert Bay, British Columbia, told CNN.",
                  style: TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
    
            
            Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://ichef.bbci.co.uk/news/800/cpsprodpb/4144/live/d7e8f9c0-5cae-11f0-ae37-a7df7603ca40.jpg.webp",
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

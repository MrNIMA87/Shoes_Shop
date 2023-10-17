import 'package:flutter/material.dart';

class ListView_Images_Story extends StatefulWidget {
  const ListView_Images_Story({super.key});

  @override
  State<ListView_Images_Story> createState() => _ListView_Images_StoryState();
}

class _ListView_Images_StoryState extends State<ListView_Images_Story> {
  var selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      //ListStory
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 0,
          top: 25,
          bottom: 25,
          right: 25,
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          //ontap List
          return InkWell(
            onTap: () {
              setState(() {
                selectIndex = index;
              });
            },
            child: Container(
              width: 60,
              margin:
                  const EdgeInsets.only(right: 10, left: 5, bottom: 10, top: 5),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                    color:
                        selectIndex == index ? Colors.deepOrange : Colors.grey,
                    width: 3),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/splashScreen.png'),
                ),
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
          );
        },
      ),
    );
  }
}

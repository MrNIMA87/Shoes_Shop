import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_project/UI_Widget/Iteams.dart';


class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  var selectIteam;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.3,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              selectIteam = index;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Iteams(indexIteam: index),
                ),
              );
            },
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 3,
                  margin: const EdgeInsets.only(
                      right: 10, left: 5, bottom: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color: Colors.deepOrange, width: 3),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/splashScreen.png'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topLeft,
                ),
                //list right
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 3.4,
                  margin: const EdgeInsets.only(
                      right: 10, left: 5, bottom: 10, top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color: Colors.deepOrange, width: 3),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/splashScreen.png'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

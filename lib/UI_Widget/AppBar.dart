import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          //AppBar
          Padding(
            //padding
            padding: EdgeInsets.only(left: 10, right: 10, top: 35),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  //BorderRdius
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  //boxShadow
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepOrange.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child:
              //Image Appbar
               Image(
                image: AssetImage('assets/images/appbar.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      );
  }
}
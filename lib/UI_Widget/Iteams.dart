import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/IteamModel.dart';


class Iteams extends StatefulWidget {
  Iteams({Key? key, required this.indexIteam}) : super(key: key);

  final int indexIteam;
  @override
  State<Iteams> createState() => _IteamsState();
}

class _IteamsState extends State<Iteams> {
  var indexIteam;
  var indexImage = 0;

  @override
  Widget build(BuildContext context) {
    List<String> _sizeShoes = <String>[
      "34",
      "35",
      "36",
      "37",
      "38",
      "39",
    ];
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splashScreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
// icon backPage
          Positioned(
            top: 20,
            left: 10,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, size: 30),
              ),
            ),
          ),
// IconLike
          Positioned(
            top: 20,
            right: 10,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart, size: 30),
              ),
            ),
          ),
// ListView
          Positioned(
            bottom: -10,
            child: SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    left: 10, top: 25, bottom: 25, right: 25),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        indexImage = index;
                      });
                    },
                    child: Container(
                      width: 60,
                      margin: const EdgeInsets.only(
                          right: 10, left: 5, bottom: 1, top: 15),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        border: Border.all(
                          color: indexImage == index
                              ? Colors.deepOrange
                              : Colors.grey,
                          width: 3,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/splashScreen.png'),
                        ),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
//botom page
      Stack(children: [
        Container(
          width: double.infinity,
          height: 328,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    travelList[widget.indexIteam].name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(color: Colors.grey, width: 1.5),
                        ),
                      ),
//
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 95, 215),
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                "\$" + "79,0",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  padding: const EdgeInsets.only(right: 10),
                  itemCount: _sizeShoes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          border:
                              Border.all(color: Colors.deepOrange, width: 2)),
                      margin: const EdgeInsets.only(left: 10),
                      child: Center(
                          child: Text(
                        _sizeShoes[min(index, _sizeShoes.length - 1)],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10.0),

              ExpandableText(
                travelList[widget.indexIteam].discription,
                style:
                    const TextStyle(color: Color.fromARGB(192, 158, 158, 158)),
                expandText: 'Read more',
                linkStyle: const TextStyle(fontSize: 16),
                collapseText: 'show less',
                maxLines: 3,
                linkColor: Colors.deepOrange,
              ),
              const SizedBox(height: 0),
              //button
            ]),
          ),
        ),
        // Positioned(
        //   top: 250,
        //   left: 300,
        //   child: Container(
        //     width: 80,
        //     height: 80,
        //     decoration: BoxDecoration(
        //       color: Colors.black,
        //       borderRadius: BorderRadius.circular(1000),
        //     ),
        //     child: Icon(Icons.arrow_forward, color: Colors.white),
        //   ),
        // ),
        Positioned(
          top: 238,
          left: 0,
          right: 0,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  //elevetion
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(206, 255, 248, 241),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/buy.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        )
      ])
    ])));
  }
}

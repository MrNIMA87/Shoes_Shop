import 'package:flutter/material.dart';

import '../MainPage/HomePage.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future<void>.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
            child: Container(
          width: double.maxFinite,
          height: double.infinity,
          child: Image.asset(
            "assets/images/splashScreen.png",
            fit: BoxFit.cover,
          ),
        )),
      ],
    );
  }
}

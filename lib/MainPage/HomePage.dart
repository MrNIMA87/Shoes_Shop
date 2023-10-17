import 'package:flutter/material.dart';

import '../UI_Widget/AppBar.dart';
import '../UI_Widget/Explore.dart';
import '../UI_Widget/ListView_Images_Story.dart';
import '../UI_Widget/TitleBar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: const [
          //AppBar
          appBar(),
          //ListView Image shoe's
          ListView_Images_Story(),
          //TitleBar Explore
          TitleBar(),
          //explore
          explore(),
          
        ],
      ),
    ));
  }
}

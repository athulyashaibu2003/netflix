import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';
import 'package:netflix/view/coming%20soon%20screen/comingsoon_screen.dart';
import 'package:netflix/view/downloads%20screen/downloads_screen.dart';
import 'package:netflix/view/home%20screen/home_screen.dart';
import 'package:netflix/view/more%20screen/more_screen.dart';
import 'package:netflix/view/search%20screen/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int indexnum = 0;
  List screens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadsScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexnum],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            indexnum = value;
            print(value);

            setState(() {});
          },
          currentIndex: indexnum,
          unselectedItemColor: Colorconstant.maingrey,
          selectedItemColor: Colorconstant.mainwhite,
          backgroundColor: Colorconstant.mainlack,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}

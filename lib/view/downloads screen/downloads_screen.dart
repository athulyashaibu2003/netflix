import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mainlack,
      appBar: AppBar(
        backgroundColor: Colorconstant.mainlack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colorconstant.mainwhite),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  color: Colorconstant.mainwhite,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              maxLines: 10,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colorconstant.mainwhite),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey[800], 
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                height: 41,
                width: 353,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "SETUP",
                    style: TextStyle(
                        color: Colorconstant.mainwhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                height: 33,
                width: 257,
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "Find Something to Download",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: Colorconstant.mainwhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

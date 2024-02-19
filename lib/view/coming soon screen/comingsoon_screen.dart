import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';
import 'package:netflix/utilis/username%20images/db/db.dart';
import 'package:netflix/view/widget/coming_soon_custom_card.dart';
import 'package:netflix/view/widget/notification_screen_card.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mainlack,
      appBar: AppBar(
        leading: Image.asset("assets/images/Group 49.png"),
        backgroundColor: Colors.black,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ComingSoonCustomWidget(
                      images:
                          Db2.comingsoonscreendata[index]["image"].toString(),
                      text1:
                          Db2.comingsoonscreendata[index]["text1"].toString(),
                      text2:
                          Db2.comingsoonscreendata[index]["text2"].toString(),
                      text3:
                          Db2.comingsoonscreendata[index]["text3"].toString(),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: 2),
            ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                padding: EdgeInsets.symmetric(vertical: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Db2.notificationMovieList.length,
                itemBuilder: (context, index) => NotificationScreenCard(
                      des: Db2.notificationMovieList[index]["description"],
                      imageUrl2: Db2.notificationMovieList[index]["imageUrl"],
                      subtitle: Db2.notificationMovieList[index]["subtitle"],
                      title: Db2.notificationMovieList[index]["title"],
                    ))
          ],
        ),
      ),
    );
  }
}

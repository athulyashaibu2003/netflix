import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';

class NotificationScreenCard extends StatelessWidget {
  const NotificationScreenCard({
    super.key,
    required this.imageUrl2,
    required this.title,
    required this.subtitle,
    required this.des,
  });
  final String imageUrl2;
  final String title;
  final String subtitle;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.red,
      // height: 100,
      child: Column(
        children: [
          Container(
            height: 193,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageUrl2), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications_sharp,
                      color: Colorconstant.mainwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Reminde Me",
                      style: TextStyle(color: Colorconstant.mainwhite),
                    )
                  ],
                ),
                SizedBox(
                  width: 7,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colorconstant.mainwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colorconstant.mainwhite),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              //    mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colorconstant.mainwhite),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 19,
                      color: Colorconstant.mainwhite,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  des,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colorconstant.mainwhite,
                      fontWeight: FontWeight.w400,
                      fontSize: 11),
                ),
                Text(
                  "Steamy . Soapy . Slowburn . Suspenseful . Teen . Mystery",
                  style: TextStyle(
                      color: Colorconstant.mainwhite,
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

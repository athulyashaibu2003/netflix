import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mainlack,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.amber,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Vector (1).png"),
              SizedBox(
                width: 15,
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(color: Colorconstant.mainwhite),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 247,
            color: Colors.grey[850],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colorconstant.mainwhite,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tell Friends About Netflix.",
                        style: TextStyle(color: Colorconstant.mainwhite),
                      )
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    maxLines: 3,
                    style: TextStyle(color: Colorconstant.mainwhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(color: Colorconstant.mainwhite),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 247,
                        height: 37,
                        color: Colorconstant.mainlack,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 37,
                        width: 96,
                        color: Colorconstant.mainwhite,
                        child: Center(
                          child: Text(
                            "Copy Link",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colorconstant.mainlack),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/whatsapp.png"),
                        VerticalDivider(
                          color: Colorconstant.mainwhite,
                          width: 5,
                        ),
                        Image.asset("assets/images/facebook.png"),
                        VerticalDivider(
                          color: Colorconstant.mainwhite,
                          width: 5,
                        ),
                        Image.asset("assets/images/gmail.png"),
                        VerticalDivider(
                          color: Colorconstant.mainwhite,
                          width: 5,
                        ),
                        Image.asset("assets/images/more.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/images/mark.png"),
              SizedBox(
                width: 10,
              ),
              Text(
                "My List",
                style: TextStyle(color: Colorconstant.mainwhite),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[600],
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "App Settings",
            style: TextStyle(color: Colorconstant.mainwhite),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Account",
            style: TextStyle(color: Colorconstant.mainwhite),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Help",
            style: TextStyle(color: Colorconstant.mainwhite),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sign Out",
            style: TextStyle(color: Colorconstant.mainwhite),
          )
        ],
      ),
    );
  }
}

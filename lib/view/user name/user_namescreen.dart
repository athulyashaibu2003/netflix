import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';
import 'package:netflix/utilis/username%20images/username_images.dart';
import 'package:netflix/view/bottom%20navigation%20screen/bottom_navigation_screen.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mainlack,
      appBar: AppBar(
        backgroundColor: Colorconstant.mainlack,
        title: Image.asset("assets/images/logos_netflix.png"),
        centerTitle: true,
        actions: [
          Image.asset("assets/images/Vector (1).png"),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.builder(
            itemCount: images.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) => index < images.length
                ? InkWell(
                    onTap: () {
                      //code to move next screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigationScreen()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(images[index]["image"]),
                          Text(
                            images[index]["text"],
                            style: TextStyle(color: Colorconstant.mainwhite),
                          )
                        ],
                      ),
                    ))
                : InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => BottomNavigationScreen()));
                    // },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/Group 1.png"))),
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: Colorconstant.mainwhite),
                        )
                      ],
                    ),
                  )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';
import 'package:netflix/utilis/username%20images/username_images.dart';

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
                ? Container(
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
                  )
                : Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Group 1.png"))),
                  )),
      ),
    );
  }
}

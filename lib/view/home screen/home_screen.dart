import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';
import 'package:netflix/view/home%20screen/widgets/custom_movie_cards.dart';
import 'package:netflix/view/widget/homescreenimages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.mainlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Rectangle 26.png"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/logos_netflix-icon.png"),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            fontSize: 20, color: Colorconstant.mainwhite),
                      ),
                      Text(
                        "Movies",
                        style: TextStyle(
                            fontSize: 20, color: Colorconstant.mainwhite),
                      ),
                      Text(
                        "My List",
                        style: TextStyle(
                            fontSize: 20, color: Colorconstant.mainwhite),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 100,
                  child: Row(
                    children: [
                      Image.asset("assets/images/TOP10.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "#2 in Nigeria Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colorconstant.mainwhite),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(width: 30),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(children: [
                    Icon(
                      Icons.play_arrow_sharp,
                      size: 21,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Play",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Info",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CustomMovieCards(
              title: "Preview",
              isCircular: true,
              imagecollection: Db3.images1,
            ),
            CustomMovieCards(
              title: "Continue Watching For",
              isbottomcontainer: true,
              imagecollection: Db3.images2,
            ),
            CustomMovieCards(
              title: "Popular On Netflix",
              isbottomcontainer: false,
              imagecollection: Db3.images3,
            ),
            // CustomMovieCards(
            //   title: "Trending Now",
            //   isbottomcontainer: false,
            // )
          ],
        ),
      ),
    );
  }
}

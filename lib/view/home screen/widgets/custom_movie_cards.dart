import 'package:flutter/material.dart';
import 'package:netflix/utilis/color%20constant/color_constant.dart';

class CustomMovieCards extends StatelessWidget {
  const CustomMovieCards({
    super.key,
    required this.title,
    this.height = 200,
    this.width = 100,
    this.isCircular = false,
    this.isbottomcontainer = false,
    required this.imagecollection,
  });
  final String title;
  final double height;
  final double width;
  final bool isCircular;
  final bool isbottomcontainer;
  final List<String> imagecollection;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colorconstant.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(
            height: height,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            image: DecorationImage(
                              image: NetworkImage(imagecollection[index]),
                              //fit: BoxFit.cover
                            ),
                            shape: isCircular == true
                                ? BoxShape.circle
                                : BoxShape.rectangle),
                        alignment: Alignment.bottomCenter,
                        child: Visibility(
                            visible: isbottomcontainer,
                            child: Column(
                              //  mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.grey,
                                  alignment: Alignment.centerLeft,
                                  height: 5,
                                  width: width,
                                  child: Container(
                                    height: 5,
                                    width: 40,
                                    color: Colors.red,
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: width,
                                  color: Colors.black,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colorconstant.mainwhite,
                                      ),
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colorconstant.mainwhite,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}

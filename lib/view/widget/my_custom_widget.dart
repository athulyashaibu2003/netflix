import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget(
      {super.key, required this.imageUrlList, required this.title});
  final String title;
  final String imageUrlList;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: Row(
          children: [
            Container(
              height: 76,
              width: 146,
              child: Image.network(
                imageUrlList,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 20),
          ],
        ));
  }
}
    //ListView.builder(
    //     itemCount: imageUrlList.length,
    //     itemBuilder: (context, index) => Container(
    //           height: 76,
    //           width: 375,
    //           color: Colors.grey,
    //           child: Row(
    //             children: [
    //               Image.network(imageUrlList[index]["imageurl"].toString())
    //             ],
    //           ),
    //         )
    //         );
  


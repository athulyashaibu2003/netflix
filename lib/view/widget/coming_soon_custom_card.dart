import 'package:flutter/material.dart';

class ComingSoonCustomWidget extends StatelessWidget {
  const ComingSoonCustomWidget(
      {super.key,
      required this.images,
      required this.text1,
      required this.text2,
      required this.text3});
  final String text1;
  final String images;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 375,
      color: Colors.grey[800],
      child: Row(
        children: [
          Container(
            width: 113,
            height: 55,
            child: Image.network(
              images,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.white54),
              ),
              Text(
                text3,
                style: TextStyle(color: Colors.white30),
              )
            ],
          )
        ],
      ),
    );
  }
}

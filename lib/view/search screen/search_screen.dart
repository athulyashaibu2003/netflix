import 'package:flutter/material.dart';
import 'package:netflix/utilis/username%20images/db/db.dart';
import 'package:netflix/view/widget/my_custom_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.search_rounded),
                  Text("SEARCH"),
                  Spacer(),
                  Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "TOP SEARCHES",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: Db.searchscreendata.length,
                itemBuilder: (context, index) => MyCustomWidget(
                  title: Db.searchscreendata[index]["title"]!,
                  imageUrlList: Db.searchscreendata[index]["imageurl"]!,
                  // textcolor: Colors.white,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

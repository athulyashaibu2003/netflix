import 'package:flutter/material.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        height: 70,
        width: 60,
        color: Colors.amber,
      ),
      separatorBuilder: (context, index) => SizedBox(
        width: 5,
      ),
    );
  }
}
